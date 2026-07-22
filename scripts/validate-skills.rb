#!/usr/bin/env ruby

require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).parent.expand_path
ALLOWED_FRONTMATTER_KEYS = %w[name description].freeze
NAME_PATTERN = /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/
MARKDOWN_LINK_PATTERN = /\[[^\]]+\]\(([^)]+)\)/

errors = []
skill_files = ROOT.children
  .select(&:directory?)
  .map { |directory| directory.join("SKILL.md") }
  .select(&:file?)
  .sort

errors << "No top-level skills found" if skill_files.empty?

workflow_file = ROOT.join("seo-content-workflow/SKILL.md")
if workflow_file.file?
  workflow = workflow_file.read
  forbidden_approval_gates = [
    "User confirmation (STOP)",
    "Wait for confirmation (hard stop)",
    "Confirmation is mandatory in the default sequence",
    "approve and continue"
  ]

  contract_match = workflow.match(/## Execution contract\s+```yaml\s+(.*?)```/m)
  if contract_match
    begin
      contract = YAML.safe_load(contract_match[1])
      expected_contract = {
        "execution_mode" => "autonomous",
        "approval_required" => false,
        "intermediate_turns" => false,
        "humanization_required" => true
      }
      unless contract == expected_contract
        errors << "seo-content-workflow/SKILL.md: execution contract must be #{expected_contract.inspect}"
      end
    rescue Psych::SyntaxError => e
      errors << "seo-content-workflow/SKILL.md: invalid execution contract YAML: #{e.message.lines.first.strip}"
    end
  else
    errors << "seo-content-workflow/SKILL.md: missing YAML execution contract"
  end
  forbidden_approval_gates.each do |marker|
    if workflow.include?(marker)
      errors << "seo-content-workflow/SKILL.md: legacy approval gate found: #{marker.inspect}"
    end
  end

  forbidden_incomplete_workflow_markers = [
    "Stage 6: Optional humanization",
    "Run `humalizer` only when the user asks to humanize or polish"
  ]
  forbidden_incomplete_workflow_markers.each do |marker|
    if workflow.include?(marker)
      errors << "seo-content-workflow/SKILL.md: optional humanization gate found: #{marker.inspect}"
    end
  end
end

prompt_skill_file = ROOT.join("seo-prompt-skill/SKILL.md")
if prompt_skill_file.file?
  prompt_skill = prompt_skill_file.read
  contract_match = prompt_skill.match(/## Keyword portfolio contract\s+```yaml\s+(.*?)```/m)
  if contract_match
    begin
      contract = YAML.safe_load(contract_match[1])
      expected_contract = {
        "selection_mode" => "adaptive",
        "typical_core_keyword_count" => 3,
        "typical_long_tail_keyword_range" => "10-12",
        "fill_missing_keywords" => false,
        "require_every_keyword" => false
      }
      unless contract == expected_contract
        errors << "seo-prompt-skill/SKILL.md: keyword portfolio contract must be #{expected_contract.inspect}"
      end
    rescue Psych::SyntaxError => e
      errors << "seo-prompt-skill/SKILL.md: invalid keyword portfolio YAML: #{e.message.lines.first.strip}"
    end
  else
    errors << "seo-prompt-skill/SKILL.md: missing YAML keyword portfolio contract"
  end
end

humalizer_file = ROOT.join("humalizer/SKILL.md")
if humalizer_file.file?
  humalizer = humalizer_file.read
  contract_match = humalizer.match(/## Parent workflow contract\s+```yaml\s+(.*?)```/m)
  if contract_match
    begin
      contract = YAML.safe_load(contract_match[1])
      expected_contract = {
        "automatic_final_stage" => true,
        "requires_separate_request" => false,
        "merge_into_parent_content" => true
      }
      unless contract == expected_contract
        errors << "humalizer/SKILL.md: parent workflow contract must be #{expected_contract.inspect}"
      end
    rescue Psych::SyntaxError => e
      errors << "humalizer/SKILL.md: invalid parent workflow YAML: #{e.message.lines.first.strip}"
    end
  else
    errors << "humalizer/SKILL.md: missing YAML parent workflow contract"
  end
end

skill_files.each do |skill_file|
  skill_dir = skill_file.dirname
  content = skill_file.read
  frontmatter_match = content.match(/\A---\n(.*?)\n---/m)

  unless frontmatter_match
    errors << "#{skill_file.relative_path_from(ROOT)}: invalid frontmatter delimiters"
    next
  end

  begin
    frontmatter = YAML.safe_load(frontmatter_match[1])
  rescue Psych::SyntaxError => e
    errors << "#{skill_file.relative_path_from(ROOT)}: invalid YAML: #{e.message.lines.first.strip}"
    next
  end

  unless frontmatter.is_a?(Hash)
    errors << "#{skill_file.relative_path_from(ROOT)}: frontmatter must be a map"
    next
  end

  unexpected_keys = frontmatter.keys - ALLOWED_FRONTMATTER_KEYS
  unless unexpected_keys.empty?
    errors << "#{skill_file.relative_path_from(ROOT)}: unexpected frontmatter keys: #{unexpected_keys.join(', ')}"
  end

  name = frontmatter["name"]
  description = frontmatter["description"]

  unless name.is_a?(String) && name.match?(NAME_PATTERN) && name.length <= 64
    errors << "#{skill_file.relative_path_from(ROOT)}: invalid skill name"
  end
  if name.is_a?(String) && name != skill_dir.basename.to_s
    errors << "#{skill_file.relative_path_from(ROOT)}: skill name must match directory"
  end

  unless description.is_a?(String) && !description.strip.empty?
    errors << "#{skill_file.relative_path_from(ROOT)}: missing description"
  end
  if description.is_a?(String)
    if description.strip.length > 1024
      errors << "#{skill_file.relative_path_from(ROOT)}: description exceeds 1024 characters"
    end
    if description.match?(/[<>]/)
      errors << "#{skill_file.relative_path_from(ROOT)}: description contains angle brackets"
    end
  end

  if content.lines.length >= 500
    errors << "#{skill_file.relative_path_from(ROOT)}: SKILL.md must stay under 500 lines"
  end

  openai_yaml = skill_dir.join("agents/openai.yaml")
  unless openai_yaml.file?
    errors << "#{openai_yaml.relative_path_from(ROOT)}: missing UI metadata"
    next
  end

  begin
    openai_metadata = YAML.safe_load(openai_yaml.read)
  rescue Psych::SyntaxError => e
    errors << "#{openai_yaml.relative_path_from(ROOT)}: invalid YAML: #{e.message.lines.first.strip}"
    next
  end

  interface = openai_metadata.is_a?(Hash) ? openai_metadata["interface"] : nil

  unless interface.is_a?(Hash)
    errors << "#{openai_yaml.relative_path_from(ROOT)}: missing interface map"
    next
  end

  display_name = interface["display_name"]
  short_description = interface["short_description"]
  default_prompt = interface["default_prompt"]
  unless display_name.is_a?(String) && !display_name.strip.empty?
    errors << "#{openai_yaml.relative_path_from(ROOT)}: missing display_name"
  end
  unless short_description.is_a?(String) && (25..64).cover?(short_description.length)
    errors << "#{openai_yaml.relative_path_from(ROOT)}: short_description must be 25-64 characters"
  end
  unless default_prompt.is_a?(String) && default_prompt.include?("$#{name}")
    errors << "#{openai_yaml.relative_path_from(ROOT)}: default_prompt must mention $#{name}"
  end
end

Dir.glob(ROOT.join("**/*.md")).sort.each do |path|
  file = Pathname.new(path)
  file.each_line.with_index(1) do |line, line_number|
    line.scan(MARKDOWN_LINK_PATTERN).flatten.each do |link|
      next if link.match?(%r{\A(?:https?://|mailto:|#|/)})

      target = file.dirname.join(link).cleanpath
      unless target.file?
        errors << "#{file.relative_path_from(ROOT)}:#{line_number}: broken local link #{link}"
      end
    end
  end
end

if errors.empty?
  puts "Validated #{skill_files.length} skills: frontmatter, metadata, size, and local links passed."
  exit 0
end

warn errors.join("\n")
exit 1
