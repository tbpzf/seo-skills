# Landing-page artifacts and resume status

The parent `seo-landing-page` workflow owns every write and merge. Save files
under the active project workspace, not this skills repository, unless the user
chooses another location.

```text
seo-content/<keyword-slug>-landing/
  content-plan.md
  content.md
  seo-metadata.md
  workflow-status.md
  prompt.md          # only for a requested reusable prompt export
```

Create `<keyword-slug>` from the lowercase focus keyword: replace spaces with
hyphens and strip other punctuation. Append `-landing` unless already present.
For a supplied outline without a keyword, use its working title. Pause only
when no safe, non-empty child of `seo-content/` can be derived. Do not overwrite
another page's directory merely because two requests share a keyword; resolve
the collision from the page subtype or user-supplied name. Reuse the existing
directory for revision and resume requests.

## `content-plan.md`

Save the full `seo-writing` plan without dropping or renaming fields. That
plan's `Keyword map` is the single schema for type, use/omit, omission reason,
placement, and any user-set count. Fold the Stage 2 `seo-audience-strategy`
brief into `Reader intent`, `Topic`, `Content structure`, and `Writing
constraints`, preserving evidence labels, intent observations and uncertainty,
expected answer form, and reader completion signal. It is
the sole persisted drafting contract. When a field is unknown, label it
`unknown` or `[fact needed]`; record the source for material claims. A
`Distinctive contribution` block must carry the full `distinctive-content`
packet, including its item table and evidence status, precise sources,
limits, baseline answer and added value, judgment reasoning and alternatives,
author intake status and basis, pending question, interview count, gap
owners/actions, and section mapping. A
generated `prompt.md` is an export derived from this plan and never overrides
it.

## `content.md` and `seo-metadata.md`

`content.md` contains the publishable landing-page body only. It starts with
exactly one Markdown H1 and uses H2/H3 headings for its sections. Keep strategy,
audit notes, evidence requests, publication blockers, and unresolved
placeholders in `workflow-status.md`, not in visible copy. Omit claims that
depend on unavailable proof.

`seo-metadata.md` contains only:

```markdown
# SEO metadata
- Title tag:
- Meta description:
- URL slug:
```

The parent extracts these two artifacts from the `seo-writing`
`draft-from-structure` output. The `Editorial audit` becomes status
findings, including evidence and link gaps. The `Draft` block, including its
one H1, becomes `content.md`. Verify that metadata and body make the same
promise after each rewrite.

## `workflow-status.md`

Write this after each stage in a saved page route. It is the resume source of truth
and the home for editorial findings:

```markdown
# Workflow status
- Route: keyword-to-page | plan-only | draft-from-structure | revision | humanize-existing | other
- Workflow state: in progress | blocked | completed
- Publication readiness: not assessed | ready | blocked
- Keyword slug:
- Next stage: 1 | 2 | 3 | 4 | 5 | 6 | 7 | none
- Stages:
  - 1 Intake: pending | completed | not requested | failed
  - 2 Plan: pending | completed | not requested | failed
  - 3 Draft: pending | completed | not requested | failed
  - 4 Humalizer and Blader: pending | completed | not requested | skipped by user | failed
  - 5 Stop Slop: pending | completed | not requested | skipped by user | failed
  - 6 Harper: pending | completed | not requested | skipped (unavailable) | skipped by user | failed
  - 7 Final verification: pending | completed | not requested | failed
- Artifacts:
  - content-plan.md: present | absent
  - content.md: present | absent
  - seo-metadata.md: present | absent
  - prompt.md: present | absent
- Intake: source references, evidence labels, and missing required inputs
- Distinctive content: packet status, author intake status/basis, pending question/count, mapped sections, and gap owners/actions (full packet in content-plan.md)
- Final audit:
  - Reader situation, journey questions, usefulness, and reader respect:
  - Plan or structure deviations:
  - Product and external claims with sources:
  - Keyword map reconciliation (each supplied term used and where, or omitted and why; unmet must-use terms; user-set counts only):
  - Metadata and H1 alignment:
  - Links and CTA destination:
  - Humanization and Stop Slop changes:
  - Grammar findings and corrections:
  - Distinctive contribution, reasoning, alternatives, limits, and evidence packet:
  - Intent evidence and remaining uncertainty:
  - Helpful-content walkthrough: pass | repair needed | blocked; reader completion, exact gaps, and repairs
- Publication blockers: none | [specific missing facts, proof, links, or destination]
- Operations: Stage 2 audience brief and writing-plan skill outcomes; required remote URLs/outcomes; Harper path, dialect, exit, parse, findings, and corrections
- Notes:
```

`Workflow state: completed` records execution of the requested route; it does
not mean the page is ready to publish. A completed plan-only route marks
Stages 3-7 `not requested` and publication readiness `not assessed`. For a
full page, set `Publication readiness: blocked` while any material claim
lacks support, a required link or CTA destination is missing, or a requested
publishable element is unresolved, or the helpful-content walkthrough finds
an unresolved central answer, evidence, or reasoning gap. A failed required remote stage sets
`Workflow state: blocked`; Harper unavailability does not. If the Stage 2
minimum draft gate fails on a body-copy route, save the plan and status with
`Workflow state: blocked`, Stage 2 pending, `Next stage: 2`, and the exact
missing inputs or one pending source question. Preserve the packet in the plan.
For plan-only work, an incomplete packet does not prevent completing the
requested plan; preserve its gaps and next question for a future drafting run.
After Stage 2, the plan controls drafting facts; intake notes in status are
provenance and gap records, not a second fact sheet.

## Optional `prompt.md`

When the user requests a reusable prompt export, save the generated prompt
with its `Fill before use` list for any unresolved variables. Keep that list
outside the copy-paste prompt block. An export with required variables still
unresolved is a template, not an executable prompt. Changes to this file do
not alter the plan or page. Carry the plan's evidence-labeled reader situation,
section jobs, factual boundaries, and every keyword use or omission decision
into the export; the prompt does not reclassify the list.

## Resume rules

1. Read the status and confirm its referenced artifacts exist. An older run may
   have a ten-stage status and a wrapped `content.md` containing `## SEO
   metadata`, `## Draft`, and `## Final audit`. Before applying new stage
   numbers, preserve that file as `content.legacy.md`, extract its single page
   body into `content.md`, move metadata to `seo-metadata.md`, and carry audit
   findings into the new status. Normalize the saved plan to the current
   reader-intent, audience-evidence, provenance, CTA, and `Keyword map` fields,
   marking gaps `unknown`; preserve every recoverable supplied phrase and do
   not add new claims.
   Rebuild stage states from evidence of completed work, leaving any unproven
   rewrite or check pending. If status is absent, reconstruct intake and the
   earliest incomplete stage from files in the same way. Save the normalized
   status before continuing.
2. Resume at `Next stage` using the saved plan's reader strategy and
   `distinctive-content` packet. For unfinished new body copy, check the packet's
   author intake status and basis; an older `ready` packet with zero questions
   and no supplied author material or opt-out leaves intake pending. Reevaluate
   the shared gate at Stage 2 before drafting. If the packet is `interview-needed`, ask its
   saved one next question only if no answer has arrived. Fold any new answer
   into the existing packet, retain the question count, and reevaluate Stage 2
   before drafting. Reuse a valid packet for local revisions; a small supported
   correction does not require a new interview.
   Run the Stage 2 single-content brief again when the reader situation or intent has
   changed, or the plan lacks that strategy. Fold the refreshed brief into
   the plan before drafting or revising. Resolve a blocked draft gate from
   verified product input, update the plan, and then run Stage 3. Never fill
   the gate with an inferred capability or invented CTA.
3. After a plan change, reset Stages 3-7. After a body change, reset Stages
   4-7. After a metadata-only change, rerun Stage 7 and rerun Stage 3 if the
   change conflicts with the plan. A prompt export change does not reset the
   page workflow.
4. Recheck body, metadata, and status together before marking the route
   completed. File presence alone does not prove a stage ran.

In-chat prompt-only and audit-only requests create no files or status unless
the user asks for a saved artifact. A requested saved prompt goes to
`prompt.md` without starting a staged page workflow or creating
`workflow-status.md`; it remains independent of the page's drafting contract.
Save audit-only findings to the user-requested path, also without page status.
