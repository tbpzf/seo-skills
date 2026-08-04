# Blog artifacts and resume status

Write under the active project workspace, not this skill repository, unless the
user specifies another path.

```text
seo-content/<topic-slug>-blog/
  content-plan.md
  content.md
  workflow-status.md
```

Create `<topic-slug>` from the lowercase focus keyword or working topic, replace
spaces with hyphens, and strip other punctuation. Append `-blog` unless already
present. Never resolve an empty or broad path.

## `content-plan.md`

Persist the complete plan returned by `seo-writing`, including reader intent,
topic promise, section jobs, evidence, selected/omitted keywords, factual
boundaries, links, and next action.

## `content.md`

```markdown
# <H1>

## SEO metadata
- Title tag:
- Meta description:
- URL slug:
- H1:

## Draft
[Full blog post]

## Internal links and evidence to add
- ...

## Publication blockers
- ...

## Final audit
- Intent and usefulness:
- Reader-respect check:
- Structure deviations:
- Evidence gaps:
- Humanization: pending
- Stop Slop: pending
- Grammar check: pending
- Changes made:
```

## `workflow-status.md`

```markdown
# Workflow status
- Route: topic-to-blog | plan-only | draft-from-structure | audit | humanize-existing | other
- Topic slug:
- Completed stages:
- Next stage:
- Skipped stages:
- Failed stages:
- Artifacts:
  - content-plan.md: present | absent
  - content.md: present | absent
- Humanization: pending | completed | skipped by user | failed
- Stop Slop: pending | completed | skipped by user | failed
- Grammar check: pending | completed | skipped (harper-cli unavailable) | skipped by user | failed
- Publication blockers: none | [short list]
- Notes:
```

Read this file when resuming. If absent, infer the earliest incomplete stage
from artifacts and audit fields, recreate it, then continue. Regenerating a plan
resets every downstream status to pending.
