#!/usr/bin/env ruby

require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).parent.expand_path
ALLOWED_FRONTMATTER_KEYS = %w[name description].freeze
NAME_PATTERN = /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/
MARKDOWN_LINK_PATTERN = /\[[^\]]+\]\(([^)]+)\)/
BLADER_REMOTE = "https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md"
STOP_SLOP_REMOTE = "https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md"

errors = []
skill_files = ROOT.children
  .select(&:directory?)
  .map { |directory| directory.join("SKILL.md") }
  .select(&:file?)
  .sort

errors << "No top-level skills found" if skill_files.empty?

expected_execution_contract = {
  "execution_mode" => "autonomous",
  "approval_required" => false,
  "intermediate_turns" => false,
  "humanization_required" => true,
  "grammar_check" => "if_available"
}.freeze

%w[seo-landing-page seo-blog].each do |workflow_name|
  workflow_file = ROOT.join(workflow_name, "SKILL.md")
  unless workflow_file.file?
    errors << "#{workflow_name}/SKILL.md: missing split workflow"
    next
  end

  workflow = workflow_file.read
  contract_match = workflow.match(/## Execution contract\s+```yaml\s+(.*?)```/m)
  if contract_match
    begin
      contract = YAML.safe_load(contract_match[1])
      unless contract == expected_execution_contract
        errors << "#{workflow_name}/SKILL.md: execution contract must be #{expected_execution_contract.inspect}"
      end
    rescue Psych::SyntaxError => e
      errors << "#{workflow_name}/SKILL.md: invalid execution contract YAML: #{e.message.lines.first.strip}"
    end
  else
    errors << "#{workflow_name}/SKILL.md: missing YAML execution contract"
  end

  [
    "User confirmation (STOP)",
    "Wait for confirmation (hard stop)",
    "Confirmation is mandatory in the default sequence",
    "approve and continue",
    "Stage 6: Optional humanization"
  ].each do |marker|
    errors << "#{workflow_name}/SKILL.md: forbidden workflow marker #{marker.inspect}" if workflow.include?(marker)
  end

  [
    "## Runtime trace",
    "[#{workflow_name}][stage N][kind] status: detail",
    "Do not silently load a sibling skill, contact a remote service,"
  ].each do |marker|
    unless workflow.include?(marker)
      errors << "#{workflow_name}/SKILL.md: missing runtime trace requirement #{marker.inspect}"
    end
  end
  unless workflow.match?(/Do\s+not report\s+`completed` until/)
    errors << "#{workflow_name}/SKILL.md: missing completion-evidence requirement"
  end

  %w[references/runtime-trace.md references/artifacts.md references/routing.md].each do |relative_path|
    unless ROOT.join(workflow_name, relative_path).file?
      errors << "#{workflow_name}/#{relative_path}: missing reference file"
    end
  end

  errors << "#{workflow_name}/SKILL.md: missing resume contract" unless workflow.include?("workflow-status.md")
  errors << "#{workflow_name}/SKILL.md: missing parent merge ownership" unless workflow.include?("Parent owns the merge")
  [BLADER_REMOTE, STOP_SLOP_REMOTE].each do |remote_url|
    errors << "#{workflow_name}/SKILL.md: missing remote dependency #{remote_url}" unless workflow.include?(remote_url)
  end
  unless workflow.include?("Do not run") && workflow.include?("`npx skills add`")
    errors << "#{workflow_name}/SKILL.md: missing no-local-install rule"
  end
end

if ROOT.join("seo-content-workflow").exist?
  errors << "seo-content-workflow: old combined workflow must be removed"
end

%w[blader-humanizer stop-slop].each do |local_dependency|
  if ROOT.join(local_dependency).exist?
    errors << "#{local_dependency}: remote dependency must not be installed locally"
  end
end

prompt_skill_file = ROOT.join("seo-landing-prompt/SKILL.md")
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
        errors << "seo-landing-prompt/SKILL.md: keyword portfolio contract must be #{expected_contract.inspect}"
      end
    rescue Psych::SyntaxError => e
      errors << "seo-landing-prompt/SKILL.md: invalid keyword portfolio YAML: #{e.message.lines.first.strip}"
    end
  else
    errors << "seo-landing-prompt/SKILL.md: missing YAML keyword portfolio contract"
  end
end

errors << "seo-prompt-skill: old prompt skill must be removed" if ROOT.join("seo-prompt-skill").exist?

pr_guidance = ROOT.join("seo-pr/references/authoritative-guidance.md")
unless pr_guidance.file?
  errors << "seo-pr/references/authoritative-guidance.md: missing authoritative source synthesis"
else
  guidance = pr_guidance.read
  %w[prnewswire.com businesswire.com].each do |domain|
    errors << "seo-pr guidance: missing authoritative source #{domain}" unless guidance.include?(domain)
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
