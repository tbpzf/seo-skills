# Blog artifacts and resume status

The parent writes under the active project workspace unless the user names
another path. Supporting skills return text and findings; they do not write or
merge these files.

```text
seo-content/<topic-slug>-blog/
  content-plan.md
  content.md
  seo-metadata.md
  workflow-status.md
```

Create `<topic-slug>` from the lowercase focus keyword or working topic,
replace spaces with hyphens, strip other punctuation, and append `-blog`
unless already present. Never resolve an empty or broad path. If a new topic
collides with an unrelated article directory, distinguish it using the article
angle or a user-supplied name. Reuse the existing directory for revisions and
resume requests.

## `content-plan.md`

Save the complete `seo-writing` plan without dropping or renaming fields. That
plan's `Keyword map` is the single schema for type, use/omit, omission reason,
placement, and any user-set count; keep optional inferred phrases separate
from user-supplied terms. Fold the Stage 2 `seo-audience-strategy` brief into
Reader intent, Topic, Content structure, and Writing constraints, preserving
evidence labels. The brief is transient; this plan is the sole persisted
drafting contract. For an informational article without a promotional CTA, set
`Primary CTA and destination: none` and record the useful next action
separately.

## `content.md`

Save only the publishable Markdown article: exactly one `# H1`, followed by
the opening and article sections. Do not include `## Draft`, metadata, content
strategy, link suggestions, audit notes, or publication blockers. Map the
`seo-writing` draft output into this article body once; do not duplicate its
H1. Omit unsupported claims from the body and record needed proof in status.

## `seo-metadata.md`

```markdown
# SEO metadata
- Title tag:
- Meta description:
- URL slug:
```

Keep metadata separate from article Markdown. The H1 lives only in
`content.md`; Stage 7 checks its alignment with the title tag. A missing
metadata value is recorded as `unknown` and as a publication blocker rather
than filled with an invented fact or destination.

## `workflow-status.md`

```markdown
# Workflow status
- Route: topic-to-blog | plan-only | draft-from-structure | revision | humanize-existing | other
- Workflow state: in progress | blocked | completed
- Publication readiness: not assessed | ready | blocked
- Topic slug:
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
- Intake: source references, evidence labels, and missing required inputs
- Final audit:
  - Reader situation, journey questions, usefulness, and reader respect:
  - Plan or structure deviations:
  - Product and external claims with sources:
  - Keyword map reconciliation (each supplied term used and where, or omitted and why; unmet must-use terms; user-set counts only):
  - Metadata and H1 alignment:
  - Links and next action:
  - Humanization and Stop Slop changes:
  - Grammar findings and corrections:
- Publication blockers: none | [short list]
- Operations: Stage 2 audience brief and writing-plan skill outcomes; required remote URLs/outcomes; Harper path, exit, parse, findings, and corrections
- Reader-strategy dependency: focused brief completed | reused saved plan | not requested (audit-only); evidence source or reason for refresh
- Notes:
```

Update the stage state after each performed stage. A completed plan-only route
marks later stages `not requested` and sets
publication readiness to `not assessed`; the full completion gate applies only
to a full-article route. A failed required remote stage sets workflow state to
`blocked`, names the failed source, and leaves later stages pending. Harper
unavailability is a non-blocking skip.

On resume, read this file and the referenced artifacts. An older run may have
`## SEO metadata`, `## Draft`, and `## Final audit` inside `content.md`, plus
an older status without workflow state or readiness. Preserve that file as
`content.legacy.md` before extracting the article into body-only `content.md`,
the metadata into `seo-metadata.md`, and editorial notes into status. Normalize
the saved plan to the current source, keyword inventory, and next-action fields,
marking gaps `unknown` instead of inventing facts. Recover user-supplied terms
from the original brief where available; do not label inferred phrases as
user-supplied. Apply the reader-strategy refresh rule in [routing.md](routing.md)
and normalize any refreshed brief into this same plan, preserving user edits.
Rebuild stage states from documented work; leave unproven
rewrites and checks pending. If status is absent, infer the
earliest incomplete stage from available files and recreate status. If the
plan changes, reset Stages 3-7; if article or metadata changes, reset the
affected rewrite, check, and verification stages. Keep workflow completion
separate from publication readiness.
