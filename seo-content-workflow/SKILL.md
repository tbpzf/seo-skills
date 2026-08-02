---
name: seo-content-workflow
description: >-
  Orchestrate a fully automatic, evidence-led SEO content workflow for English
  SaaS pages. Use when the user wants to turn keywords into a useful topic and
  content structure, turn an approved or supplied structure into a complete
  article, or run both steps end to end. The workflow saves a reusable prompt,
  an intent-led content plan, draft markdown, humanized copy, a stop-slop
  review, and an optional Harper grammar check without approval checkpoints.
  Also use when continuing or revising SaaS SEO content while preserving reader
  intent, factual accuracy, usefulness, and conversion paths.
---

# SEO Content Workflow

Use this root skill to coordinate the repository's SEO skills. Each linked
skill remains independently usable; load only the stage needed for the user's
request.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: false
humanization_required: true
grammar_check: if_available
```

Treat this block as the machine-readable default workflow contract. Override it
only when the user's current request explicitly asks for a review checkpoint or
prompt-only output, or explicitly opts out of humanization.

## Runtime trace

Emit concise progress messages in the conversation while this workflow runs.
These are status messages, not approval checkpoints: continue automatically
after each one. Do not silently load a sibling skill, contact a remote service,
run a CLI, or write an artifact.

Use this format, substituting only facts that have actually occurred:

```text
[seo-content-workflow][stage N][kind] status: detail
```

`kind` is one of `route`, `skill`, `remote`, `cli`, `file`, or `result`.
At minimum, emit all applicable events below:

- At routing: `route` with the selected route and the stages that will run.
- Before and after every sibling-skill invocation: `skill` with the skill name,
  local path, and `started`, `completed`, `skipped`, or `failed` status.
- Before and after every remote operation: `remote` with the provider or
  operation name and the same status vocabulary. State `remote: not used` when
  a stage completes without one; never imply that research, a network call, or
  a remote skill ran when it did not.
- Before and after every CLI preflight or command: `cli` with the executable
  name, operation, resolved absolute path when available, exit status, whether
  structured output parsed, and the finding/correction count when applicable.
- After each artifact write: `file` with the relative output path and artifact
  type (`prompt`, `plan`, `draft`, or `final`).
- At the end: `result` with completed, skipped, and failed stages plus the
  final artifact path.

For example:

```text
[seo-content-workflow][stage 1][skill] started: loading seo-prompt-skill from ../seo-prompt-skill/SKILL.md
[seo-content-workflow][stage 2][file] completed: wrote prompt to seo-content/ai-kitchen-design/prompt.md
[seo-content-workflow][stage 10][cli] skipped: harper-cli was not found; grammar check is non-blocking
```

Do not expose prompt or draft body text, secrets, environment variables, API
tokens, full command lines, or raw CLI output in trace messages. Do not report
`completed` until the corresponding skill, command, or write actually finished.
On failure, name the operation and a concise reason, then follow the workflow's
existing blocking or non-blocking rule. A skipped stage must include its reason.

## Dependency preflight

Route the request first, then verify only the skill needed for the next stage:

| Stage or route | Required file |
| --- | --- |
| Generate or revise a prompt | `../seo-prompt-skill/SKILL.md` |
| Plan a topic/structure, draft, revise, or audit page copy | `../seo-writing/SKILL.md` |
| SEO-contract humanization | `../humalizer/SKILL.md` |
| Blader rewrite within Humalizer | `../blader-humanizer/SKILL.md` |
| Final stop-slop review | `../stop-slop/SKILL.md` |
| Grammar or spelling check | `../harper-grammar/SKILL.md` |

In the default sequence, check `seo-prompt-skill` before Stage 1,
`seo-writing` before Stage 4, and `humalizer` plus `blader-humanizer` before
Stage 8. Check `stop-slop` before Stage 9. If a required skill is missing,
stop and name it. Check `harper-grammar` before Stage 10;
unlike the writing skills, a missing local `harper-cli` only skips that stage.
Ask the user to install the complete repository with
`npx skills add tbpzf/skills`; do not approximate that stage from
memory.

## Skills

| Skill | Use independently when | Role in this workflow |
| --- | --- | --- |
| [seo-prompt-skill](../seo-prompt-skill/SKILL.md) | The user gives a keyword and wants a reusable prompt or template. | Converts a keyword and brief into a complete SEO content prompt. |
| [seo-writing](../seo-writing/SKILL.md) | The user wants a topic/outline, a draft from an outline, or a complete SaaS page. | Analyzes reader intent, plans useful topics and structures, then writes and audits evidence-led content. |
| [humalizer](../humalizer/SKILL.md) | The user already has a draft that sounds generic, templated, or AI-written. | Protects the SEO contract and coordinates the Blader rewrite. |
| [blader-humanizer](../blader-humanizer/SKILL.md) | The page needs the full no-fabrication humanizer review. | Runs within Humalizer as the required Blader rewrite and self-audit. |
| [stop-slop](../stop-slop/SKILL.md) | A humanized draft needs a final directness and rhythm review. | Runs after Humalizer and immediately before Harper grammar checking. |
| [harper-grammar](../harper-grammar/SKILL.md) | The user wants English spelling, grammar, or Markdown linting. | Runs a constrained Harper grammar review after stop-slop when the CLI is available. |

## Default keyword → content sequence

When the user supplies one or more keywords and wants SEO content (or does not
explicitly ask for prompt-only / copy-only), run this sequence end to end in
the same turn. Treat the initial request as authorization to generate and save
the intermediate prompt and final content. Do not add a confirmation step or
end the turn after an intermediate artifact.

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

Use the checklist for internal progress only. Do not end a response merely to
show it. If the user interrupts with a correction, treat the latest instruction
as an override, update every affected artifact, and resume from the earliest
affected stage.

### Stage 1 — Generate prompt

Apply `seo-prompt-skill` to produce a review-ready SEO content prompt from
the keyword(s) and any supplied product brief.

- With a keyword only, produce a prompt template with explicit product fact,
  proof, audience, CTA, and keyword-policy variables.
- With a product brief, fill those variables and retain unknown facts as
  `[fact needed]`.
- Use natural keyword mode unless the user gave count targets.
- Apply the adaptive keyword portfolio contract from `seo-prompt-skill`.
  Preserve the supplied set; never invent keywords merely to fill its typical
  shape. If the user explicitly asks for keyword research, keep new suggestions
  optional until they are selected.
- Choose one focus keyword for the page. Treat other relevant core keywords as
  supporting terms, then select long-tail phrases only where they match the
  page intent and section purpose.
- Do not embed a full Humalizer pass in the prompt.
- Resolve structural choices from the request and project context. Use the
  defaults in `seo-prompt-skill` when no explicit choice exists.

Pass the generated prompt directly to Stage 2. Do not present it as a blocking
review artifact, ask for approval, or wait for a follow-up message.

### Stage 2 — Save the generated prompt

Immediately write the generated prompt into the **current project**
(the user's workspace root, not this skills repository unless that is the
active workspace).

Default path (override only if the user specifies another location):

```text
seo-content/<keyword-slug>/prompt.md
```

- `<keyword-slug>`: lowercase primary keyword, spaces to hyphens, strip other
  punctuation (example: `AI kitchen design` → `ai-kitchen-design`).
- File contents: the full generated copy-paste prompt only (not the Stage 1
  review chrome such as “Fill before use” or “Prompt configuration”, unless
  the user asks to keep them).
- Continue to Stage 3 after writing. Report the saved path in the final
  response, not as a reason to pause.

### Stage 3 — Resolve content readiness with safe defaults

Read the saved prompt and scan for unresolved `[[...]]`, `[fact needed]`, and
`[proof needed]` placeholders. Resolve them without a user checkpoint whenever
the request, supplied materials, or current project provides the answer.

Use these automatic fallbacks when information remains unavailable:

- Infer page type, audience, market, language, and CTA from the keyword,
  request, and current project. Otherwise use `seo-prompt-skill` defaults.
- Never invent product behavior, limits, proof, pricing, integrations, or
  internal URLs. Omit claims that depend on them and record each gap in the
  final evidence/audit section.
- If a usable page needs an unknown destination or proof slot, use a clearly
  labeled placeholder and mark the saved draft as requiring that input before
  publication. This does not block generation.
- Persist every inferred or newly supplied value into `prompt.md`; do not rely
  on conversation context as the only copy of a required value.
- Finish normalizing and saving all prompt-level values before invoking
  `seo-writing`; the saved prompt is the source of truth for factual and SEO
  constraints, while the Stage 5 plan becomes the source of truth for topic,
  intent, and structure during drafting and interrupted-run recovery.

Pause only when the primary topic/keyword cannot be determined at all, a
required sibling skill is unavailable, or the workspace cannot be read or
written. Do not pause merely because product facts, evidence, optional links,
pricing, brand voice, or a preferred CTA are missing when unsupported claims
can be omitted or labeled.

### Stage 4 — Analyze reader intent and create the topic/content structure

Apply `seo-writing` in `plan` mode using the saved prompt and keyword set.
This is a real planning deliverable, not hidden chain-of-thought and not a list
of generic headings.

The parent-selected `plan` mode overrides workflow and output instructions
inside the reusable prompt. Use `prompt.md` only for its facts, audience,
language, SEO, evidence, and CTA constraints. Do not execute its drafting phase
or write body copy during Stage 4.

First resolve the reader's intent:

- What the query most likely means in this product and market context
- Who is searching, what they already know, and the task or decision they need
  to complete
- The answer, outcome, or artifact they expect from the page
- The constraints, risks, trade-offs, and likely follow-up questions that must
  be covered for the page to be genuinely useful
- Which adjacent intents do not belong on this page

Then select one specific topic promise and build a structure that fulfills it.
Do not merely turn the keyword into a title. Every major section must have a
distinct reader question or job, a concrete takeaway, and an evidence/example
need when one is material. Put sections in the order the reader needs them,
not in a generic SEO-template order.

Respect the reader's competence. Use plain language without writing down to
them. Do not pad the outline with obvious definitions, repeat the same advice
under different headings, explain familiar terms the stated audience already
knows, or use fake beginner scenarios. Prefer specific decisions, steps,
examples, limits, and usable artifacts.

### Stage 5 — Save the content plan

Write the plan into the same project directory:

```text
seo-content/<keyword-slug>/content-plan.md
```

Persist the complete plan returned by `seo-writing` without dropping or
renaming fields. `seo-writing` owns the content-plan schema; do not maintain a
second schema in this root skill. The saved plan must include enough audience,
language, factual, keyword, evidence, link, and CTA constraints to support a
`draft-from-structure` route when no reusable prompt exists.

For a `topic-and-structure-only` route, stop after saving this file and report
the path. Do not generate filler body copy. Otherwise continue automatically.

### Stage 6 — Generate markdown SEO content from the saved structure

Apply `seo-writing` in `draft-from-structure` mode using `content-plan.md` as
the required content specification and the **saved** prompt when one exists.

- The parent-selected mode overrides workflow/output instructions inside the
  reusable prompt. Read the saved plan; do not execute the prompt's Phase 1 or
  embed a second `<content_plan>` in `content.md`.
- Preserve the prompt's keyword policy, CTA, fact boundaries, and language
  settings when it exists. Otherwise use the same constraints normalized into
  the plan. Always preserve the plan's topic promise, intent, and section jobs.
- Answer the primary question early. Give each section the concrete takeaway,
  evidence, example, decision support, or action promised by the plan.
- Do not add sections merely for length or keyword placement. Do not restate
  the introduction in the conclusion, repeat obvious advice, or explain basics
  the plan says the audience already knows.
- Require a clear title tag containing the focus keyword and a clear H1
  containing the focus keyword plus a specific, supportable user benefit or
  outcome. Treat these as publishability checks, not optional suggestions.
- Scale keyword placement to the saved keyword inventory. Do not require every
  supplied phrase to appear, and do not expand a sparse inventory to the
  typical portfolio shape defined by `seo-prompt-skill`.
- Skip the standalone Humalizer subsection inside `seo-writing`; the root
  workflow runs the required Humalizer and Blader finalization in Stage 8.
- Output publishable markdown when no material placeholders remain. Otherwise,
  output a complete draft artifact with metadata, headings, body, CTAs, and a
  clear pre-publication gap list as required by the prompt / `seo-writing`
  deliverable.
- When Stage 3 left unresolved evidence or destination placeholders, generate
  the safest useful draft possible and surface those gaps in the audit. Do not
  stop to request approval.

### Stage 7 — Save draft markdown content

Write the generated page into the same project directory:

```text
seo-content/<keyword-slug>/content.md
```

Default file contents:

```markdown
# <H1>

## SEO metadata
- Title tag:
- Meta description:
- URL slug:
- H1:

## Draft
[Full page copy in markdown]

## Internal links and evidence to add
- ...

## Final audit
- ...
- Humanization: pending
```

If the user asked for draft-only markdown (no strategy/audit sections), save
only the publishable page body plus metadata. Tell the user the saved path.

### Stage 8 — Protect SEO contract, apply Blader humanization, and save content

Run `humalizer`, including its required `blader-humanizer` pass, after every
default Stage 7 completion; the user does not need to request either pass
separately. Skip this stage only when the current request explicitly says to
skip humanization or retain the raw draft unchanged.

**Owns:** SEO contract, claim accuracy, voice calibration, fabrication
prevention, specificity, and the main Blader pattern rewrite.

1. Read `content.md`, `content-plan.md`, and the saved `prompt.md` when it
   exists. Treat the plan's intent, reader promise, section jobs, and expected
   depth plus the prompt's verified facts, keyword policy, metadata, links,
   headings, and CTA as the protected SEO contract. On a direct-copy route
   without `prompt.md`, build the same contract from the user's brief plus the
   saved plan, metadata, links, evidence notes, and CTA.
2. Apply the full `humalizer` workflow. It must invoke `blader-humanizer` on
   the page copy and preserve the protected contract. Remove generic or
   keyword-shaped prose without inventing facts, personality, proof, or claims.
3. Merge the revised copy back into the existing `content.md` structure.
   Preserve metadata, internal-link/evidence gaps, and the final audit instead
   of replacing the file with Humalizer's standalone response wrapper.
4. When the file includes a final audit, update it with
   `Humanization: completed (Humalizer + Blader)` and concise material changes.
   If no edits were necessary, record that the pass completed with no material
   changes. When the user requested body-plus-metadata only, keep that shape
   and report completion in the final response instead of adding an audit section.
5. Overwrite `content.md` with the final merged page. Write a separate
   `content.draft.md` only when the user explicitly asks to retain both versions.

### Stage 9 — Stop Slop review and save content

Run [stop-slop](../stop-slop/SKILL.md) after Stage 8 and before Harper. Skip
this stage only when the current request explicitly skips humanization or asks
to retain the post-Humalizer draft unchanged.

**Owns:** residual directness, rhythm, density, and leftover formulaic cadence.
Do not redo Stage 8's claim, voice, or SEO-contract work.

1. Read the saved `content.md` and preserve the same protected SEO contract.
2. Apply the residual `stop-slop` review (max two scoring rounds). Remove
   leftover filler and weak rhythm without blanket bans that weaken accurate
   SEO content.
3. When the file includes a final audit, add `Stop Slop: completed (score:
   <total>/50)` with concise material changes. When no changes are necessary,
   record the completed score. For a body-plus-metadata-only request, preserve
   that shape and report completion in the final response.
4. Save the merged revision back to `content.md`.

### Stage 10 — Grammar-check and save final content

Run [harper-grammar](../harper-grammar/SKILL.md) after Stage 9 unless the user
explicitly asks to skip grammar checking. Check the saved `content.md` and
preserve the same protected SEO contract used by Humalizer.

1. Run the Harper preflight. Do not install or update the CLI as part of this
   workflow.
2. If Harper is available, review its JSON findings and apply only
   high-confidence corrections allowed by `harper-grammar`. Re-run the check
   after edits. Do not require zero findings.
3. When `content.md` has a final audit, update it with `Grammar check:
   completed`, the number of corrections, and material findings retained for
   review. For a body-plus-metadata-only request, preserve that shape and report
   the same result in the final response instead of adding an audit section.
4. If `harper-cli` is absent, record `Grammar check: skipped (harper-cli
   unavailable)` in an existing audit, or report it in the final response for
   body-plus-metadata-only output. Do not block the workflow or substitute
   another grammar service.
5. If a present CLI lacks the required capability, exits unexpectedly, or emits
   malformed JSON, record `Grammar check: failed (incompatible CLI or invalid
   output)` in an existing audit, or report it in the final response for
   body-plus-metadata-only output. Keep the workflow non-blocking, but do not
   mislabel this as a skipped check.
6. Save the final `content.md` without changing its requested output shape.

Do not end the turn after Stage 8 or Stage 9. The default workflow is complete
only after Stage 10 finishes and the final `content.md` is saved.

## Routing for non-default requests

| User intent | Action |
| --- | --- |
| Topic and structure from keyword | Run Stages 1–5 and save `content-plan.md`; do not draft body copy |
| Content from a supplied structure | Use `seo-writing` to normalize the structure and brief into its complete `content-plan.md` contract, then run Stages 6–10; `prompt.md` is optional. If no focus keyword exists, derive the directory slug from the working title/topic using the same lowercase-and-strip normalization as Stage 2, verify it is a non-empty child of `seo-content/`, and pause only when no safe slug can be produced. |
| Keyword to complete article | Run Stages 1–10 without a checkpoint between planning and drafting |
| Prompt only | Generate the prompt; save it only when requested; do not add a confirmation turn |
| Copy directly / skip prompt | Build and save the complete `seo-writing` content-plan contract from the brief, then run Stages 6–10 |
| Humanize existing draft | `humalizer` and `stop-slop`, then Stage 10 when Harper is available |
| Continue an interrupted run | Inspect saved artifacts and resume at the earliest incomplete stage without confirmation |
| Revise an existing saved prompt or plan | Edit the affected artifact and regenerate downstream content through Stage 10 unless the user asks for plan-only or prompt-only |
| Explicitly skip humanization | Skip Stages 8–9, run Stage 10, and record `Humanization: skipped by user` and `Stop Slop: skipped by user` |
| Explicitly skip grammar checking | Finish after Stage 9 and record `Grammar check: skipped by user` |

## Workflow guardrails

- This workflow improves content quality; it does not guarantee search rankings,
  conversions, or that a text will evade AI-detection systems.
- Never invent product facts. Prefer `[fact needed]` / `[proof needed]` over
  unsupported claims.
- Never force a numeric keyword policy when the user did not provide one.
- A blog must solve the reader's stated task or decision. A structurally valid
  article that offers only definitions, generic tips, or keyword-shaped filler
  fails the workflow.
- Treat the audience as capable adults. Plain language means clear and direct,
  not childish, patronizing, or over-explained.
- Scope stays English SaaS landing pages and educational blogs — not YMYL,
  local, ecommerce, programmatic SEO, or competitor-comparison content.
- The default sequence has no approval gate. Introduce a review checkpoint only
  when the user explicitly asks for one in the current request.
- Humanization is mandatory in the default sequence. Finishing after Stage 7
  without an explicit user opt-out is an incomplete workflow.
- Stop Slop is mandatory after humanization in the default sequence. Finishing
  after Stage 8 without an explicit user opt-out is an incomplete workflow.
- Grammar checking is non-blocking by default. Harper findings require context;
  do not force unsafe changes or claim that zero findings prove correctness.
- Missing facts never authorize invented claims. Continue with safe omissions
  or labeled placeholders and identify anything still needed before publication.
