# Runtime trace

Emit concise progress messages while the workflow runs. These are status
messages, not approval checkpoints: continue automatically after each one. Do
not silently load a sibling skill, contact a remote service, run a CLI, or
write an artifact.

## Format

```text
[seo-landing-page][stage N][kind] status: detail
```

`kind` is one of `route`, `skill`, `remote`, `cli`, `file`, or `result`.

## Required events

- At routing: `route` with the selected route and the stages that will run.
- Before and after every sibling-skill invocation: `skill` with the skill name,
  local path, and `started`, `completed`, `skipped`, or `failed` status.
- Before and after every remote operation: `remote` with the provider or URL and
  the same status vocabulary. For the required Blader Humanizer and Stop Slop
  reads, include the GitHub Raw URL. State `remote: not used` when a stage
  completes without one; never imply that research, a network call, or a remote
  skill ran when it did not. Default stages do not require live SERP research.
- Before and after every CLI preflight or command: `cli` with the executable
  name, operation, resolved absolute path when available, exit status, whether
  structured output parsed, and the finding/correction count when applicable.
- After each artifact write: `file` with the relative output path and artifact
  type (`prompt`, `plan`, `draft`, `final`, or `status`).
- At the end: `result` with completed, skipped, and failed stages plus the
  final artifact path.

## Examples

```text
[seo-landing-page][stage 1][skill] started: loading seo-landing-prompt from ../seo-landing-prompt/SKILL.md
[seo-landing-page][stage 2][file] completed: wrote prompt to seo-content/ai-kitchen-design-landing/prompt.md
[seo-landing-page][stage 8][remote] started: reading https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md
[seo-landing-page][stage 9][remote] completed: applied https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md
[seo-landing-page][stage 10][cli] skipped: harper-cli was not found; grammar check is non-blocking
```

## Safety

Do not expose prompt or draft body text, secrets, environment variables, API
tokens, full command lines, or raw CLI output in trace messages. Do not report
`completed` until the corresponding skill, command, or write actually finished.
On failure, name the operation and a concise reason, then follow the workflow's
existing blocking or non-blocking rule. A skipped stage must include its reason.
