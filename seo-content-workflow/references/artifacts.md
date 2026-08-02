# Artifacts and resume status

All paths are under the **current project** workspace root (not this skills
repository unless that is the active workspace). Override only when the user
specifies another location.

## Directory layout

```text
seo-content/<keyword-slug>/
  prompt.md
  content-plan.md
  content.md
  workflow-status.md
```

- `<keyword-slug>`: lowercase primary keyword, spaces to hyphens, strip other
  punctuation (example: `AI kitchen design` → `ai-kitchen-design`).
- When the same keyword serves different page types, append a short page-type
  suffix (`ai-kitchen-design-blog`, `ai-kitchen-design-landing`) or use a
  user-supplied directory name.
- For a structure-only route without a focus keyword, derive the slug from the
  working title/topic with the same normalization. Pause only when no safe
  non-empty child of `seo-content/` can be produced.

## `prompt.md`

Full generated copy-paste prompt only. Do not keep Stage 1 review chrome such
as “Fill before use” or “Prompt configuration” unless the user asks to keep
them.

## `content-plan.md`

Persist the complete plan returned by `seo-writing` without dropping or
renaming fields. `seo-writing` owns the schema.

## `content.md`

Default shape:

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

## Publication blockers
- ...

## Final audit
- Intent and product fit:
- Usefulness and reader-respect check:
- Structure deviations, if any:
- Evidence gaps:
- Clarity bar (middle-school readable): pass / fixes made:
- Humanization: pending
- Stop Slop: pending
- Grammar check: pending
- Changes made:
```

If the user asked for draft-only markdown (no strategy/audit sections), save
only the publishable page body plus metadata. Still maintain
`workflow-status.md` so resume stays deterministic.

Write a separate `content.draft.md` only when the user explicitly asks to
retain both versions.

## `workflow-status.md`

Update after every completed, skipped, or failed stage. This file is the resume
source of truth.

```markdown
# Workflow status
- Route: keyword-to-article | topic-and-structure-only | draft-from-structure | prompt-only | humanize-existing | other
- Keyword slug:
- Completed stages: [1, 2, 3]
- Next stage: 4
- Skipped stages:
- Failed stages:
- Artifacts:
  - prompt.md: present | absent
  - content-plan.md: present | absent
  - content.md: present | absent
- Humanization: pending | completed | skipped by user | failed
- Stop Slop: pending | completed | skipped by user | failed
- Grammar check: pending | completed | skipped (harper-cli unavailable) | skipped by user | failed
- Publication blockers: none | [short list]
- Notes:
```

## Resume rules

1. Read `workflow-status.md` when it exists. Resume at `Next stage`.
2. If the status file is missing, infer the earliest incomplete stage from
   artifacts and `content.md` audit fields (`Humanization`, `Stop Slop`,
   `Grammar check`), then recreate `workflow-status.md` before continuing.
3. Never treat a present `content.md` as complete while Humanization, Stop Slop,
   or Grammar check remain `pending` on the default route.
4. After regenerating an earlier artifact, reset every downstream status field
   to `pending` and resume from the earliest affected stage.
