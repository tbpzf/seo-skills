# Blog routes

Select one route before writing. The stage numbers refer to the sequence in
`../SKILL.md`; the parent owns every saved artifact and merge.

| Request | Route |
| --- | --- |
| Topic or keyword to complete owned-site blog | Run Stages 1-7 |
| Topic and structure only | Run Stages 1-2; save plan and status |
| Draft from a supplied outline or brief | Normalize it through Stages 1-2, then run Stages 3-7 |
| Revise a saved plan only | Reuse its reader strategy or refresh it under the rule below, update `content-plan.md`, invalidate Stages 3-7, and stop with status updated |
| Revise a saved article | Reuse its plan or refresh Stage 2 under the rule below; apply `seo-writing` in `revise` mode at Stage 3, then run Stages 4-7 and record material changes |
| Revise a supplied external article | Normalize the article and brief through Stage 2 into saved plan/body/metadata as below, apply `seo-writing` in `revise` mode, then run Stages 4-7 |
| Audit an existing article | Apply `seo-writing` audit mode and return ranked findings without changing files; save an audit only when requested |
| Audit and fix an article | Audit first, then use the revision route for authorized changes |
| Humanize an existing article | Normalize its protected contract and files as below, then run Stages 4-7 |
| Continue interrupted work | Read or reconstruct `workflow-status.md`, apply the reader-strategy refresh rule below, then resume at the earliest incomplete or invalidated stage |
| User opts out of humanization | Mark Stages 4-5 `skipped by user`; run Stages 6-7 |
| User opts out of grammar | Mark Stage 6 `skipped by user`; run Stage 7 |

## Existing-copy routes

For revision and resume, use the audience situation already recorded in the
saved plan. Rerun `seo-audience-strategy` in focused `single-content brief`
mode before `seo-writing` planning when the user changes the reader situation
or search intent, or when the plan lacks an evidence-labeled reader situation,
decision, or proof needs. Normalize its output into `content-plan.md`; do not
save a second brief. A keyword addition alone does not require a new strategy
brief when it fits the existing situation and intent. Preserve user edits when
updating the plan and reset downstream stages only when it changes.

For an audit-only request, keep the source unchanged. Return findings ordered
by publication impact, with exact passages and suggested corrections. Do not
create `workflow-status.md` or an audit file unless the user requests a saved
result. If saved, write to the user's path or `audit.md` beside an existing
article; keep it separate from `content.md`.

For revision or humanize-existing, preserve the supplied article's promise and
section jobs. If a complete saved plan exists, use it and add any new
user-supplied keywords before rewriting. Otherwise use the focused reader
brief at Stage 2 to normalize the user brief and article into
`content-plan.md`, preserving the exact supplied primary and long-tail terms
and labelling unknown product claims, citations, keyword provenance, links,
voice, and CTA destination. Give each supplied long-tail term a selected role
or omission reason before rewriting. Save the
article with exactly one H1 in `content.md` and available title tag, meta
description, and URL slug in `seo-metadata.md`; mark missing values `unknown`.
This normalization does not authorize a site-wide coverage audit or new claims.
For revision, run Stage 3 in `revise` mode against the imported body, then
Stages 4-7. For humanization-only, run Stages 4-7. Record remaining publication
blockers in status.

## Scope

- A commercial landing page goes to `seo-landing-page`.
- A third-party contributed article goes to `seo-guest-post`.
- A news announcement goes to `seo-pr`.
- This workflow excludes YMYL, local SEO, ecommerce, programmatic SEO, and
  competitor comparisons unless a dedicated workflow is supplied.

For every route, keep supplied keywords finite unless research was explicitly
requested. On writing and revision routes, preserve the supplied inventory
through planning, rewriting, and final verification; check numeric targets only
when the user supplies them.
Keep evidence gaps out of the article as invented claims. A blog
may end with a useful resource or next step and no promotional CTA.
Before drafting, let `seo-writing` run `distinctive-content` in `gate` mode. If
the packet is `interview-needed`, save the one next question and resume after
the answer; a generic draft is not a substitute. A documented workflow,
approved proof, concrete example, or meaningful limit may satisfy the gate.
