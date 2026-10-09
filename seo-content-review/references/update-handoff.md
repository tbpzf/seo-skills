# Plan and apply an existing-content update

Use for `update-plan` or `review-and-update`. Preserve the report's evidence,
reader task, and requested scope when moving from diagnosis to writing.

## Handoff brief

Return this with an update plan, or pass it to the writer for an authorized edit:

- Original content path, URL, or supplied text; metadata and plan/status paths
  when present.
- Content type, reader task, promise, and protected wording or citations.
- Requested update scope; whether intent, promise, or next action may change.
- Confirmed product changes with source, evidence status, effective date, and
  applicable version/plan/rollout conditions; unresolved or conflicting facts.
- Findings to repair, mapped to exact sections, dependent metadata/assets,
  and the bounded replacement needed.
- Useful supported sections to retain; unrelated issues to report only.
- Supplied keyword inventory and affected use/omission decisions, when known;
  missing history stays unknown rather than becoming invented requirements.
- Missing essential facts and next action; optional omissions.
- Owning writing route and requested artifact location, when known.

An update-plan result is a review handoff, not a new `content-plan.md`. The
writing parent normalizes needed changes into its own persisted contract.

## Apply through the owner

| Content | Writing route | Output owner |
| --- | --- | --- |
| Owned-site informational article | [seo-blog](../../seo-blog/SKILL.md) revision | Parent saves plan, body, metadata, and status |
| Owned-site commercial landing page | [seo-landing-page](../../seo-landing-page/SKILL.md) revision | Parent saves plan, body, metadata, and status |
| Third-party contributed article | [seo-guest-post](../../seo-guest-post/SKILL.md) revision | Parent returns article and submission notes; saves only when asked |
| Press release | [seo-pr](../../seo-pr/SKILL.md) revise | Parent returns release and readiness notes; saves only when asked |

When this reviewer is called by a parent, return the report and update brief to
that caller. Do not invoke the caller again; it continues its revision branch.
In standalone `review-and-update`, dispatch the brief to the matching parent in
revision mode, using the supplied content as the original. A proposed repair in
a read-only report is not authorization to apply it.

The parent reuses or updates its saved plan with current supported facts. Refresh
reader strategy only when the task or intent changes or the substantive update
requires missing strategy; a local correction retains supported context. Update
a stale keyword omission when its reason changes, documenting the new decision.
Reset only affected downstream stages and keep all later edits within scope.

Apply supported corrections while recording unrelated defects. If an essential
fact needed for one repair is unavailable, withhold that replacement and report
it; other independently supported requested edits may proceed. A changed core
promise that cannot be supported blocks its new body copy. Do not manufacture
proof to close the audit.

After revision, verify changed facts and every dependent passage identified in
the brief against the revised copy, metadata, and accessible assets. Reuse the
parent's final walkthrough and audit rather than starting another review cycle.
Report performed edits and remaining gaps; an unavailable screenshot or pending
production release cannot be called updated or verified. Keep publication and
CMS changes within the user's explicit instructions.
