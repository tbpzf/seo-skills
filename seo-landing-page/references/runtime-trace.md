# Landing-page runtime trace

Use concise user-visible milestones while a route runs; they are progress
reports, not approval checkpoints. Record detailed operation outcomes in
`workflow-status.md` for saved routes.

```text
[seo-landing-page][stage N][kind] status: detail
```

`kind` is `route`, `skill`, `remote`, `cli`, `file`, or `result`.
Use `started`, `completed`, `skipped`, `blocked`, or `failed` only when
the stated state is true.

1. Announce the selected route and stages before work. In Stage 2, name
   `seo-audience-strategy` when starting its single-content brief,
   `distinctive-content` when its gate or interview runs, and `seo-writing`
   when turning those outputs into the saved plan. Report the
   completed artifact or blocker at the stage boundary. Group routine writes
   into that stage result.
2. Announce a remote fetch before it happens. Stage 4 names Humalizer and its
   single Blader fetch; Stage 5 names the pinned Stop Slop URL. Record the
   exact URL and outcome in status. A required remote failure is reported
   immediately and blocks the workflow.
3. Announce Harper preflight and result for Stage 6 when used. Record the
   executable path, operation, exit status, JSON parse status, actual dialect or spelling preservation mode, finding count,
   correction count, and skip/failure reason in status; keep raw output out of
   progress messages.
4. Report the final workflow state, publication readiness, page artifact
   paths, and blockers. For a draft-gate stop, report the saved plan path and
   exact missing inputs.

Examples:

```text
[seo-landing-page][stage 1][route] started: keyword-to-page, Stages 1-7
[seo-landing-page][stage 2][skill] started: seo-audience-strategy single-content brief
[seo-landing-page][stage 2][skill] blocked: distinctive-content author intake pending; ask question 1/10 in chat and wait
[seo-landing-page][stage 2][skill] completed: author intake resolved; distinctive-content packet ready; mapped source material to the plan
[seo-landing-page][stage 2][skill] completed: evidence-labeled reader brief passed to seo-writing
[seo-landing-page][stage 2][skill] completed: seo-writing plan saved to seo-content/release-notes-landing/content-plan.md
[seo-landing-page][stage 4][remote] started: Humalizer reading https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md
[seo-landing-page][stage 5][remote] started: reading https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md
[seo-landing-page][stage 6][cli] skipped: harper-cli unavailable; grammar check is non-blocking
[seo-landing-page][stage 7][result] completed: workflow complete; publication readiness blocked by missing CTA destination
```

Keep draft text, secrets, environment variables, tokens, complete commands,
and raw CLI output out of trace messages. State a concrete reason for each
skip, block, or failure. Do not report `completed` until the operation and
its required file write finished.

On a body-copy route with a pending author-intake or essential factual question,
ask the single
question visibly in chat and wait; report any saved incomplete plan, keep
Stage 2 pending, and resume there after the answer. A file containing the
question or a progress line saying an interview is needed does not ask it. A
plan-only result can complete with gaps recorded. At final verification report
the helpful-content walkthrough result and specific publication blockers,
separately from the editing-stage outcome.
