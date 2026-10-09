# Existing-content review validation

`seo-content-review` was checked on 2026-10-09 with two independent agent
executions using a fictional PhotoNest article and supplied local product
documents. Test content and generated files stayed in a temporary directory;
no production article, CMS, or installed skill was changed.

## Read-only review

The user asked in Chinese to review an existing blog after feature changes and
return findings without changing files. The article denied all Google Drive
import, used an obsolete Settings path, claimed universal 80% time savings,
listed prices without current evidence, and retained a dated 2024 beta note.
Current documentation supported one-time Google Drive import on the Pro web
plan, file uploads on Basic, and new Albums paths. A proposed sync feature was
not released.

The actual report identified exact passages, reader impact, inspected sources,
and repairs. It distinguished confirmed feature conflicts from unverified
prices/results, qualified plan/platform scope, retained historical context,
reported absent metadata/search evidence, and returned no rewritten article.
The source remained unchanged.

## Scoped review and update

A second user request authorized only Google Drive feature and import-step
updates, required a separate output directory, and explicitly skipped
humanization, Stop Slop, and grammar. The agent routed the update through the
blog revision workflow and wrote plan, body, metadata, and status artifacts.

Checks against the actual output confirmed:

- The original source hash was unchanged.
- Pro web eligibility, Basic limits, current UI paths, account connection,
  photo selection, and one-time-copy limits appeared in the updated body.
- The obsolete import denial, all-plan restriction, and Settings path were
  removed from current guidance.
- The original heading, out-of-scope prices and outcome claim, CTA, and dated
  beta paragraph were preserved.
- Stages 4–6 were skipped by user and Stage 7 completed. Workflow completion
  remained separate from blocked whole-article publication readiness.
- Missing metadata stayed `unknown`; no release date, customer proof, or sync
  behavior was invented.

## Integration and structural checks

The reviewer uses the shared helpful-content standard, the writing review
reference, and the distinctive-content audit. It never calls a writing audit
entry that routes back to it. Parent-called reviews return stage output;
standalone report saves and direct compatibility redirects have an explicit
owner. Authorized updates use parent revision once and retain native final checks.

`ruby scripts/validate-skills.rb`, the skill-creator quick validator, and
`git diff --check` passed. These exercises test the two main behaviors and their
ownership contracts; they do not establish performance on all content or reader
satisfaction. Live URLs, inaccessible assets, and publication tools were outside
the test scope.
