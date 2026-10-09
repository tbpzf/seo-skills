---
name: seo-content-review
description: >-
  Review existing English SaaS blog posts, landing pages, guest articles, and
  press releases for reader usefulness, search-intent fit, evidence, and outdated
  product details. Use for a read-only content audit, a refresh plan after feature
  or workflow changes, or review and update when edits are explicitly requested.
  Route new content to its writing workflow; technical site SEO and code review
  are outside this skill.
---

# SaaS Content Review

Review what the reader can accomplish with the existing content and whether its
claims and instructions still apply. Apply the shared
[helpful content standard](../distinctive-content/references/helpful-content.md).
Keep useful, supported content; recommend changes where a reader's answer,
decision, or action would improve.

## Modes and ownership

| Mode | Request | Deliverable |
| --- | --- | --- |
| `review` (default) | Review, audit, check accuracy, or identify outdated copy | Prioritized findings and necessary update actions; source unchanged |
| `update-plan` | Plan a refresh or map a product change to existing content | Findings plus a section-level update brief; source unchanged |
| `review-and-update` | Review and fix, or apply a specified feature update | Review first, then pass supported edits to the owning writing route |

“Review this because features changed” requests findings unless the user also
asks to change the copy. A requested update authorizes that stated scope;
proceed with supported changes without a second approval checkpoint.

Standalone review and update-plan results return in chat. Save a report only
when requested, at the requested path or `content-review.md` beside a local
article; never overwrite the source or a parent's plan/status to save a report.
When called by a content parent, return stage output to that caller, which
owns any save. A direct `seo-writing` audit redirect with no content parent
uses this standalone report contract. If edits are requested, the content's writing parent owns the revised
copy, metadata, plan, status, and merges. Read
[update-handoff.md](references/update-handoff.md) only for an update branch.

## Workflow

### 1. Establish the review contract

Read the supplied text, file, or URL, relevant metadata, and any saved reader
brief, content plan, source packet, or submission rules. Identify content type,
intended reader, promise, query when known, and the task the content should
complete. Preserve user-set terms, protected wording, voice, and update scope.
A saved plan is useful context, not proof that its facts remain current.

Use the supplied article's supported promise when no plan exists. Label inferred
intent as a hypothesis. Request the article only if its body cannot be accessed;
return limited findings when metadata, analytics, or product material is missing.
Missing optional inputs do not require a new audience interview or a site audit.
For a batch, keep findings and readiness separate for each supplied article.

This step is complete when the content and requested scope are known, or the
exact unavailable input and review limitation are recorded.

### 2. Check facts and product-change impact

Inspect relevant supplied sources, current product documentation, release notes,
and authorized local product files when available. Use the smallest research
needed to check material claims and instructions. Record exact supporting
references and distinguish `supplied`, `checked`, `hypothesis`, and `unknown`.
An inaccessible citation stays unverified; an old article is not automatically
wrong. Missing search data cannot establish changed search intent or traffic loss.

For feature updates, removed capabilities, changed plans, pricing, UI, or
integrations, follow [freshness.md](references/freshness.md). Compare old claims
with the actual new behavior, release status, and applicable scope. Track all
passages that depend on a changed fact, including instructions, limits,
recommendations, metadata, and CTA paths. Keep historical statements tied to
their original context.

This step is complete when each material change or suspect claim has a source,
applicability check, and concrete finding, or an explicit verification gap.

### 3. Review the answer and contribution

Apply [editorial-review.md](../seo-writing/references/editorial-review.md) where
its checks fit the content type. Run
[distinctive-content](../distinctive-content/SKILL.md) in `audit` mode using the
existing copy and available evidence; reuse its findings instead of running an
interview or source gate. Do not call `seo-writing` audit mode or a writing
parent's audit route from here: those entries can call this reviewer.

Walk through the reader's task with the actual draft. Check the complete answer,
steps or criteria, examples, reasoning, alternatives, and limits. Identify what
the contribution adds beyond the baseline answer; checked synthesis and useful
explanation count. Inspect search evidence only when intent ambiguity affects
a material finding and research is available. Retain uncertainty otherwise.

For a guest article, apply the supplied host rules or the caller's researched
publisher contract; unchecked rules remain unknown. For a press release, read
[authoritative-guidance.md](../seo-pr/references/authoritative-guidance.md) and
apply [seo-pr's release-audit criteria](../seo-pr/SKILL.md) to the journalist's
task in the release's original time context. Preserve historical news facts;
an archived event is not defective merely because it is no longer new. Owned-site metadata requirements apply to owned pages,
not automatically to guest articles or releases. Grammar observations are
findings; a read-only review does not run rewrite stages.

This step is complete when every major section has been tested against its
reader job and all material gaps identify an exact passage and specific repair.

### 4. Return findings or hand off authorized updates

Rank by reader impact: `high` for a false central claim, unusable instruction,
unsupported recommendation, or mandatory publication requirement; `medium` for
material missing context or weaker decision support; `low` for local clarity or
presentation. Keep a verification gap separate from a confirmed defect.
A publication blocker names the task or requirement that cannot be met.

Use this compact report, adapting its size to the assignment:

```markdown
## Content review
- Content, type, reader, and requested scope:
- Review status: complete | limited (with reason)
- Readiness: ready within checked scope | verification needed | blocked
- Reader-task walkthrough: pass | repair needed | blocked
- Main contribution and judgment limits:
- Sources inspected (references, relevant dates/versions, and evidence status):

| Priority | Passage or section | Issue and reader impact | Evidence or verification gap | Specific repair |
| --- | --- | --- | --- | --- |

## Update actions
- Necessary changes and affected sections:
- Supported passages to retain:
- Missing facts and likely owner:
- Update scope and writing route, if requested:
```

Include representative quotes or section/line references so the user can locate
each finding. Explain readiness only within what was checked; missing material
verification cannot pass. An audit may be complete while content readiness is
blocked. If there are no material findings, say so without inventing repairs.
For `update-plan`, include the handoff brief defined in the linked reference.
For `review-and-update`, use that brief to carry the authorized scope and sources
to the parent; report actual changes, remaining blockers, and saved paths only
after the parent completes its work.

## Completion

A review completes when requested checks are covered or explicitly limited,
findings are traceable and ranked, and every material unsupported or stale claim
has a repair or verification action. An update plan adds a source-backed,
bounded handoff. An authorized update completes only after its owning route
applies supported changes, verifies the affected content and metadata, and
reports unresolved blockers. Never infer rankings, traffic gains, or reader
satisfaction from an audit score or a changed publication date.
