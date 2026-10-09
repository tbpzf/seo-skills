# Blog runtime trace

Give concise progress at route selection, focused reader brief or saved-plan
reuse, saved plan, saved draft, completed rewrite/review, grammar outcome, and
final verification. Combine adjacent
completed actions in one update when that is clearer. Report exceptions as
soon as they affect the route. Do not pause for approval.

```text
[seo-blog][stage N][kind] status: detail
```

`kind` is `route`, `skill`, `remote`, `cli`, `file`, or `result`. Name a sibling
skill when it first runs, a remote source with its exact pinned URL when first
read, and each saved artifact at the save milestone. For Harper, include the
preflight outcome, actual dialect or spelling preservation mode, command status,
JSON parse result, finding count, and
correction count when available. Keep draft text, secrets, environment
variables, tokens, complete commands, and raw CLI output out of the trace.

Examples:

```text
[seo-blog][stage 2][skill] completed: seo-audience-strategy returned an evidence-labeled single-content brief for seo-writing
[seo-blog][stage 2][skill] completed: distinctive-content packet ready; mapped source material to the plan
[seo-blog][stage 2][file] completed: saved content-plan.md from seo-writing plan output
[seo-blog][stage 4][remote] completed: Humalizer read https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md
[seo-blog][stage 6][cli] skipped: harper-cli unavailable; grammar check is non-blocking
[seo-blog][stage 7][result] completed: workflow completed; publication blocked by missing product evidence
```

Use `completed` only after the operation finishes. A failed required source
sets workflow state to `blocked`; an unavailable Harper check is `skipped`.

For an essential source question, report the saved incomplete plan and one
pending question; keep Stage 2 pending and resume there after the answer. A
plan-only result can complete with gaps recorded. At final verification report
the helpful-content walkthrough result and specific publication blockers,
separately from the editing-stage outcome.
