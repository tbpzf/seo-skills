# Blog runtime trace

Emit progress messages; do not pause for approval.

```text
[seo-blog][stage N][kind] status: detail
```

`kind` is `route`, `skill`, `remote`, `cli`, `file`, or `result`.

Report routing, sibling skill calls, remote reads, CLI checks, artifact writes,
and the final result. For remote operations include the exact pinned URL. For a
CLI include the executable, operation, exit status, parse status, and finding
count when available. Never expose draft text, secrets, environment variables,
tokens, complete commands, or raw CLI output in a trace.

Examples:

```text
[seo-blog][stage 2][skill] started: loading seo-writing from ../seo-writing/SKILL.md in plan mode
[seo-blog][stage 2][file] completed: wrote seo-content/release-notes-blog/content-plan.md
[seo-blog][stage 5][remote] started: reading pinned Blader Humanizer instructions
[seo-blog][stage 7][cli] skipped: harper-cli unavailable; grammar check is non-blocking
```

Report `completed` only after the operation finishes. A skipped or failed stage
must include its reason and follow the workflow's blocking rule.
