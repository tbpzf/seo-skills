---
name: seo-content-workflow
description: >-
  Orchestrate a fully automatic, evidence-led SEO content workflow for English
  SaaS pages. Use when the user wants to turn keywords into a useful topic and
  content structure, turn a supplied structure into a complete article, or run
  both steps end to end. The workflow saves a reusable prompt, an intent-led
  content plan, draft markdown, humanized copy, a stop-slop review, and an
  optional Harper grammar check without approval checkpoints. Also use when
  continuing or revising SaaS SEO content while preserving reader intent,
  factual accuracy, usefulness, and conversion paths.
---

# SEO Content Workflow

Coordinate the repository's SEO skills. Each linked local skill remains
independently usable; load only the stage needed for the user's request. Blader
Humanizer and Stop Slop are remote runtime dependencies and must not be
installed, cloned, or cached in the project.

Read [runtime-trace.md](references/runtime-trace.md),
[artifacts.md](references/artifacts.md), and
[routing.md](references/routing.md) when running this workflow.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: false
humanization_required: true
grammar_check: if_available
```

Override only when the user explicitly asks for a review checkpoint,
prompt-only output, or opts out of humanization.

## Runtime trace

Follow [runtime-trace.md](references/runtime-trace.md). Emit
`[seo-content-workflow][stage N][kind] status: detail` progress messages.
Do not silently load a sibling skill, contact a remote service, run a CLI, or
write an artifact. Do not report `completed` until the work finished.

## Dependency preflight

Route first, then verify only the next-stage local skill file or remote URL:

| Stage or route | Required source |
| --- | --- |
| Generate or revise a prompt | `../seo-prompt-skill/SKILL.md` |
| Plan, draft, revise, or audit | `../seo-writing/SKILL.md` |
| SEO-contract humanization | `../humalizer/SKILL.md` |
| Blader rewrite within Humalizer | `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md` |
| Final stop-slop review | `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md` plus its remote `references/` files as needed |
| Grammar or spelling check | `../harper-grammar/SKILL.md` |

Default checks: `seo-prompt-skill` before Stage 1, `seo-writing` before Stage 4,
`humalizer` plus the remote Blader source before Stage 8, the remote Stop Slop
sources before Stage 9, and `harper-grammar` before Stage 10. A missing local
writing skill or unavailable required remote source blocks the run. A missing
`harper-cli` only skips Stage 10.

## Remote skill sources

Fetch these sources at runtime with the agent's web or HTTP-reading tool:

- Blader Humanizer: `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md`
- Stop Slop core: `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md`
- Stop Slop references: resolve links in the core file against
  `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/`

Use the fetched Markdown as instructions for the current run only. Do not run
`npx skills add`, clone either repository, create a local skill directory, or
persist a downloaded copy. The commit-pinned URLs are the reviewed dependency
contract; update the pins only through a repository change. Emit a runtime-trace
message before each remote request. If a required source cannot be read, record
the URL and error, mark the stage failed, and stop rather than silently using a
stale or partial substitute.

## Skills

| Skill | Independent use | Role here |
| --- | --- | --- |
| [seo-prompt-skill](../seo-prompt-skill/SKILL.md) | Reusable prompt from a keyword/brief | Stage 1 prompt |
| [seo-writing](../seo-writing/SKILL.md) | Plan, draft, or audit SaaS copy | Stages 4–7 |
| [humalizer](../humalizer/SKILL.md) | Protect SEO contract + coordinate rewrite | Stage 8 |
| [blader/humanizer](https://github.com/blader/humanizer) | Remote no-fabrication pattern rewrite | Inside Stage 8 |
| [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | Remote residual directness/rhythm review | Stage 9 |
| [harper-grammar](../harper-grammar/SKILL.md) | Local Harper grammar check | Stage 10 |

## Default keyword → content sequence

When the user supplies keyword(s) and wants SEO content (not prompt-only /
copy-only), run Stages 1–10 in one turn. Treat the request as authorization to
save intermediates and finals. Do not add confirmation steps.

```
Task progress:
- [ ] Stage 1: Generate prompt
- [ ] Stage 2: Save generated prompt
- [ ] Stage 3: Resolve content readiness with safe defaults
- [ ] Stage 4: Analyze reader intent and create the topic/content structure
- [ ] Stage 5: Save the content plan
- [ ] Stage 6: Generate markdown SEO content from the saved structure
- [ ] Stage 7: Save draft markdown content
- [ ] Stage 8: Protect SEO contract, apply Blader humanization, and save markdown content
- [ ] Stage 9: Run Stop Slop review and save markdown content
- [ ] Stage 10: Grammar-check and save final markdown content
```

Update [workflow-status.md](references/artifacts.md) after each stage. On user
correction, update affected artifacts and resume from the earliest affected
stage.

### Stage 1 — Generate prompt

Apply `seo-prompt-skill`. Keep unknown facts as placeholders. Use natural
keyword mode unless the user gave count targets. Preserve the supplied keyword
set; never invent keywords to fill the typical portfolio shape. Choose one
focus keyword. Do not embed a full Humalizer pass. Pass the prompt to Stage 2
without approval.

### Stage 2 — Save the generated prompt

Write `seo-content/<keyword-slug>/prompt.md` per
[artifacts.md](references/artifacts.md). Continue to Stage 3.

### Stage 3 — Resolve content readiness with safe defaults

Scan `prompt.md` for unresolved placeholders. Infer page type, audience,
market, language, and CTA from context or `seo-prompt-skill` defaults. Never
invent product behavior, limits, proof, pricing, integrations, or internal
URLs. Omit unsupported claims and record publication blockers. Persist inferred
values into `prompt.md`. Pause only when the primary keyword/topic cannot be
determined, a required skill is missing, or the workspace is unusable.

### Stage 4 — Analyze reader intent and create the topic/content structure

Apply `seo-writing` in `plan` mode. Parent-selected mode overrides drafting
instructions inside the reusable prompt. Resolve reader intent, choose one
topic promise, and build a section structure with distinct jobs and takeaways.
Do not write body copy.

### Stage 5 — Save the content plan

Write `content-plan.md`. For `topic-and-structure-only`, stop here. Otherwise
continue.

### Stage 6 — Generate markdown SEO content from the saved structure

Apply `seo-writing` in `draft-from-structure` mode with `content-plan.md` and
`prompt.md` when present. Preserve plan intent/structure and prompt constraints.
Require a clear title tag and H1 with the focus keyword; H1 also needs a
specific supportable benefit. Skip the standalone Humalizer subsection inside
`seo-writing`. Surface unresolved evidence/destinations in the audit; do not
stop for approval.

### Stage 7 — Save draft markdown content

Write `content.md` using the artifact template. Set audit fields to
`Humanization: pending`, `Stop Slop: pending`, and `Grammar check: pending`
unless the route skips them.

### Stage 8 — Protect SEO contract, apply Blader humanization, and save

Run `humalizer` with the required remote Blader Humanizer instructions after
every default Stage 7 completion unless the user opts out. Parent owns the merge
into `content.md`; the remote instructions never own local file writes.

1. Read `content.md`, `content-plan.md`, and `prompt.md` when present.
2. Apply Humalizer + Blader while preserving the SEO contract.
3. Merge revised copy into the existing `content.md` structure.
4. Update audit: `Humanization: completed (Humalizer + Blader)` plus material
   changes, or note no material changes.
5. Overwrite `content.md` and update `workflow-status.md`.

### Stage 9 — Stop Slop review and save

Fetch and apply the remote Stop Slop core instructions after Stage 8 unless
humanization was skipped. Fetch its remote reference files only when the core
instructions call for them. Parent owns the merge/save; remote instructions
never own local file writes. Treat upstream style rules as review signals, not
absolute overrides. Preserve verified facts, legal and technical meaning,
required terms, metadata, headings, links, citations, caveats, and primary CTA.
Reject any remote-rule revision that violates this protected contract. Do not
redo Stage 8 claim/voice/SEO-contract work. Update audit with
`Stop Slop: completed (score: <total>/50)`.

### Stage 10 — Grammar-check and save final content

Run `harper-grammar` after Stage 9 unless skipped by the user. Do not install
Harper. Apply only high-confidence allowed corrections. Record completed,
skipped, or failed grammar status accurately. Default workflow is complete only
after Stage 10 finishes and final `content.md` is saved.

## Routing and guardrails

Use [routing.md](references/routing.md) for non-default intents and the full
guardrail list. Key defaults: no approval gate; never invent facts; humanization
and Stop Slop are mandatory unless opted out; Harper is non-blocking.
