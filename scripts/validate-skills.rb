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
        "humanization_required" => true,
        "grammar_check" => "if_available"
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

  required_trace_markers = [
    "## Runtime trace",
    "[seo-content-workflow][stage N][kind] status: detail",
    "Do not silently load a sibling skill, contact a remote service,"
  ]
  required_trace_markers.each do |marker|
    unless workflow.include?(marker)
      errors << "seo-content-workflow/SKILL.md: missing runtime trace requirement: #{marker.inspect}"
    end
  end
  unless workflow.match?(/Do not report\s+`completed` until/)
    errors << "seo-content-workflow/SKILL.md: missing runtime trace completion-evidence requirement"
  end

  %w[
    references/runtime-trace.md
    references/artifacts.md
    references/routing.md
  ].each do |relative_path|
    unless ROOT.join("seo-content-workflow", relative_path).file?
      errors << "seo-content-workflow/#{relative_path}: missing reference file"
    end
  end

  unless workflow.include?("workflow-status.md")
    errors << "seo-content-workflow/SKILL.md: missing workflow-status.md resume contract"
  end
  unless workflow.include?("Parent owns the merge")
    errors << "seo-content-workflow/SKILL.md: missing parent merge/write ownership rule"
  end
end

stop_slop_file = ROOT.join("stop-slop/SKILL.md")
if stop_slop_file.file?
  stop_slop = stop_slop_file.read
  if stop_slop.match?(/owned by Stage\s*6\b/)
    errors << "stop-slop/SKILL.md: stale Stage 6 ownership; humanization is Stage 8"
  end
  if stop_slop.match?(/merge it back into the existing `content\.md`/)
    errors << "stop-slop/SKILL.md: child skill must not claim content.md write ownership"
  end
  unless stop_slop.match?(/Humalizer\s*\/\s*Stage\s*8/)
    errors << "stop-slop/SKILL.md: must attribute prior ownership to Humalizer / Stage 8"
  end
  unless stop_slop.include?("Do not write `content.md`")
    errors << "stop-slop/SKILL.md: must defer content.md writes to the parent workflow"
  end
end

checklist_file = ROOT.join("stop-slop/references/checklist.md")
if checklist_file.file?
  checklist = checklist_file.read
  if checklist.match?(/Stage 6 already fixed/)
    errors << "stop-slop/references/checklist.md: stale Stage 6 reference; use Humalizer / Stage 8"
  end
  unless checklist.match?(/Humalizer\s*\/\s*Stage\s*8/)
    errors << "stop-slop/references/checklist.md: must reference Humalizer / Stage 8"
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
        "automatic_rewrite_stage" => true,
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
