# Blog routing and guardrails

| User intent | Action |
| --- | --- |
| Topic/keyword to complete blog | Run Stages 1-7 |
| Topic and structure only | Run Stages 1-2 and stop after saving the plan |
| Draft from a supplied outline | Normalize and save the plan, then run Stages 3-7 |
| Audit existing blog | Apply `seo-writing` audit mode; revise only when requested |
| Humanize existing blog | Run Stages 5-7 |
| Continue interrupted work | Read or reconstruct `workflow-status.md` and resume |
| Revise a saved plan | Update it and rerun every affected downstream stage |
| Skip humanization | Skip Stages 5-6, run Stage 7, and record both skips |
| Skip grammar | Finish after Stage 6 and record the skip |
| Landing-page request | Route to `seo-landing-page` |
| Press-release request | Route to `seo-pr` |

Guardrails:

- Do not invent facts, sources, quotes, product behavior, or first-hand experience.
- Do not turn an informational article into an uninterrupted sales pitch.
- Do not force numeric keyword targets unless the user supplied them.
- Do not expand the supplied keyword inventory unless keyword research was
  explicitly requested; label new suggestions optional.
- Do not publish definition-only filler when the query requires an action,
  decision, example, or diagnosis.
- Scope excludes YMYL, local SEO, ecommerce, programmatic SEO, and competitor
  comparison unless a dedicated workflow is supplied.
- Humanization and Stop Slop are required by default; Harper is non-blocking.
- Missing evidence becomes a placeholder or publication blocker, never a claim.
