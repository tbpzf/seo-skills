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
skill_directory_names = skill_files.map { |file| file.dirname.basename.to_s }

expected_execution_contract = {
  "execution_mode" => "autonomous",
  "approval_required" => false,
  "intermediate_turns" => "source_questions_only",
  "source_interview" => "before_new_body",
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
  ["content-plan.md", "content.md", "seo-metadata.md", "workflow-status.md",
   "sole persisted drafting contract", "publication readiness", "`revise` mode",
   "`Keyword map`", "user-set count", "seo-audience-strategy",
   "single-content brief"].each do |term|
    errors << "#{workflow_name}/SKILL.md: missing saved-content contract #{term.inspect}" unless workflow.include?(term)
  end
  artifacts_file = ROOT.join(workflow_name, "references/artifacts.md")
  if artifacts_file.file?
    artifacts = artifacts_file.read
    ["content-plan.md", "content.md", "seo-metadata.md", "workflow-status.md",
     "Workflow state", "Publication readiness", "content.legacy.md",
     "Keyword map", "omission", "user-set", "seo-audience-strategy"].each do |term|
      errors << "#{workflow_name}/references/artifacts.md: missing artifact contract #{term.inspect}" unless artifacts.include?(term)
    end
  end
  [BLADER_REMOTE, STOP_SLOP_REMOTE].each do |remote_url|
    errors << "#{workflow_name}/SKILL.md: missing remote dependency #{remote_url}" unless workflow.include?(remote_url)
  end
  unless workflow.include?("Do not run") && workflow.include?("`npx skills add`")
    errors << "#{workflow_name}/SKILL.md: missing no-local-install rule"
  end
end

writing_file = ROOT.join("seo-writing/SKILL.md")
if writing_file.file?
  writing = writing_file.read
  ["sole persisted drafting contract", "Product facts and provenance",
   "Brand voice and sample source", "Next useful action", "Primary CTA and destination", "`revise`", "## Editorial audit",
   "seo-metadata.md", "## Keyword map", "Supplied supporting and long-tail keywords",
   "User keyword requirements", "Type (primary/supporting/long-tail)",
   "case-insensitive exact matches", "Supplied keyword check",
   "seo-audience-strategy"].each do |term|
    errors << "seo-writing/SKILL.md: missing shared stage contract #{term.inspect}" unless writing.include?(term)
  end
end

audience_file = ROOT.join("seo-audience-strategy/SKILL.md")
if audience_file.file?
  audience = audience_file.read
  unless audience.include?("single-content brief") &&
         audience.include?("without writing a file") &&
         audience.include?("references/guest-post.md")
    errors << "seo-audience-strategy: missing focused parent-stage or guest-reader contract"
  end
end

# These are handoff fields, not an assessment of generated-content quality.
distinctive_file = ROOT.join("distinctive-content/SKILL.md")
if distinctive_file.file?
  distinctive = distinctive_file.read
  ["- Status: ready | interview-needed | provisional | blocked",
   "- Baseline answer and added value:", "- Judgment reasoning, alternatives, and conditions",
   "- Source intake: pending | completed | supplied | skipped by user | not required",
   "- Intake basis:",
   "- Pending question:", "Evidence status", "- Open evidence gaps:"].each do |field|
    errors << "distinctive-content/SKILL.md: missing evidence-packet field #{field.inspect}" unless distinctive.include?(field)
  end
else
  errors << "distinctive-content/SKILL.md: missing shared source stage"
end

helpful_reference = ROOT.join("distinctive-content/references/helpful-content.md")
errors << "distinctive-content: missing shared helpful-content standard" unless helpful_reference.file?
%w[seo-audience-strategy seo-writing seo-content-review seo-landing-page seo-blog seo-guest-post seo-pr seo-landing-prompt humalizer].each do |skill_name|
  file = ROOT.join(skill_name, "SKILL.md")
  unless file.file? && file.read.include?("../distinctive-content/references/helpful-content.md")
    errors << "#{skill_name}: missing shared helpful-content handoff"
  end
end

review_file = ROOT.join("seo-content-review/SKILL.md")
if review_file.file?
  review = review_file.read
  ["`review` (default)", "`update-plan`", "`review-and-update`",
   "references/freshness.md", "references/update-handoff.md",
   "../seo-writing/references/editorial-review.md", "../distinctive-content/SKILL.md"].each do |term|
    errors << "seo-content-review: missing review-stage contract #{term.inspect}" unless review.include?(term)
  end
  %w[seo-blog seo-landing-page seo-guest-post seo-writing].each do |caller|
    caller_file = ROOT.join(caller, "SKILL.md")
    unless caller_file.file? && caller_file.read.include?("seo-content-review")
      errors << "#{caller}: missing existing-content review handoff"
    end
  end
else
  errors << "seo-content-review/SKILL.md: missing existing-content review entry"
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
  unless prompt_skill.include?("`Keyword map`") && prompt_skill.include?("without recomputing them")
    errors << "seo-landing-prompt/SKILL.md: parent export must reuse the saved keyword map"
  end
  prompt_skeleton_file = ROOT.join("seo-landing-prompt/prompt-skeleton.md")
  unless prompt_skill.include?("[[SUPPLIED_PRIMARY_KEYWORD]]") &&
         prompt_skeleton_file.file? &&
         prompt_skeleton_file.read.include?("[[SUPPLIED_PRIMARY_KEYWORD]]")
    errors << "seo-landing-prompt: exported prompt must distinguish supplied primary from focus"
  end
  contract_match = prompt_skill.match(/## Keyword portfolio contract\s+```yaml\s+(.*?)```/m)
  if contract_match
    begin
      contract = YAML.safe_load(contract_match[1])
      expected_contract = {
        "selection_mode" => "adaptive",
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

guest_skill_file = ROOT.join("seo-guest-post/SKILL.md")
guest_keyword_file = ROOT.join("seo-guest-post/references/keywords.md")
guest_routes_file = ROOT.join("seo-guest-post/references/routes.md")
if guest_skill_file.file?
  guest_skill = guest_skill_file.read
  unless guest_skill.include?("seo-audience-strategy") && guest_skill.include?("single-content brief")
    errors << "seo-guest-post: missing focused audience-strategy stage"
  end
  unless guest_skill.include?("Save a file only when")
    errors << "seo-guest-post: missing chat-default save contract"
  end
  unless guest_keyword_file.file? && guest_skill.include?("references/keywords.md")
    errors << "seo-guest-post: missing guest keyword planning reference"
  end
  if guest_keyword_file.file? &&
     !(guest_skill.include?("avoid/prohibited") && guest_keyword_file.read.include?("prohibited terms"))
    errors << "seo-guest-post: missing user-prohibited keyword handling"
  end
  ["### 4. Humanize the article", "### 5. Review directness",
   "### 6. Check grammar", "### 7. Run the submission audit",
   "../humalizer/SKILL.md", "../harper-grammar/SKILL.md",
   BLADER_REMOTE, STOP_SLOP_REMOTE].each do |term|
    errors << "seo-guest-post: missing quality stage #{term.inspect}" unless guest_skill.include?(term)
  end
  if guest_routes_file.file?
    guest_routes = guest_routes_file.read
    ["Audit-only requests", "Humalizer and Stop Slop", "Harper grammar check",
     "unavailable Harper", "AI-assisted-writing ban"].each do |term|
      errors << "seo-guest-post/references/routes.md: missing route outcome #{term.inspect}" unless guest_routes.include?(term)
    end
  end
end

humalizer_file = ROOT.join("humalizer/SKILL.md")
if humalizer_file.file? && !humalizer_file.read.include?("references/guest-post.md")
  errors << "humalizer: missing guest-post branch"
end

harper_file = ROOT.join("harper-grammar/SKILL.md")
if harper_file.file? &&
   !(harper_file.read.include?("seo-guest-post") && harper_file.read.include?("standard input"))
  errors << "harper-grammar: missing chat-only guest-post check"
end

readme_file = ROOT.join("README.md")
if readme_file.file?
  readme = readme_file.read
  unless readme.include?("`seo-audience-strategy` automatically")
    errors << "README.md: missing automatic audience-strategy routing"
  end
  unless readme.include?("save only when asked") && readme.include?("saves only when asked")
    errors << "README.md: missing guest-post chat-default save ownership"
  end
  unless readme.include?("guest posts automatically run") && readme.include?("Harper")
    errors << "README.md: missing guest-post prose and grammar workflow"
  end
  ["Landing page for your own site", "Blog post for your own site",
   "Guest post for another publication"].each do |heading|
    section = readme.split("### #{heading}", 2)[1]&.split(/^### /, 2)&.first.to_s
    unless section.include?("Primary keyword:") && section.include?("Long-tail keywords:")
      errors << "README.md: #{heading} example must show primary and long-tail input"
    end
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
        next
      end

      source_directory = file.relative_path_from(ROOT).each_filename.first
      target_directory = target.relative_path_from(ROOT).each_filename.first
      if skill_directory_names.include?(source_directory) && !skill_directory_names.include?(target_directory)
        errors << "#{file.relative_path_from(ROOT)}:#{line_number}: local dependency must ship inside an installed skill: #{link}"
      end
    end
  end
end

if errors.empty?
  puts "Validated #{skill_files.length} skills: structure, workflow handoffs, metadata, and local links passed."
  exit 0
end

warn errors.join("\n")
exit 1
