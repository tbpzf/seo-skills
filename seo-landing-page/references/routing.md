# Landing-page routes

Select one route from the user's requested deliverable. The seven default
stages are in [SKILL.md](../SKILL.md); saved output and resume behavior are in
[artifacts.md](artifacts.md).

| User intent | Route |
| --- | --- |
| Keyword or brief to finished landing page | Run Stages 1-7 |
| Landing-page plan only | Run Stages 1-2; save the plan, mark later stages `not requested`, and mark the route completed with publication readiness `not assessed` |
| Copy from a supplied outline | Run Stages 1-2 with the outline, normalize it into the full `content-plan.md` contract, evaluate the draft gate, then run Stages 3-7 |
| Copy directly, without a reusable prompt | Run the default sequence; no prompt export is needed |
| Reusable prompt only | Apply `seo-landing-prompt` and return the prompt; save `prompt.md` only when requested |
| Reusable prompt in addition to a page | Build the plan first, then export a prompt derived from it; the saved plan still controls drafting |
| Audit existing copy only | Apply `seo-writing` in `audit` mode; return findings in chat unless a file is requested |
| Revise a supplied external draft or audit and fix it | Run Stages 1-2 to read its body and metadata and save a plan with reader situation, facts, voice, and CTA; apply `seo-writing` in `revise` mode for requested fixes at Stage 3, then run Stages 4-7 |
| Humanize existing copy | Run Stages 1-2 to import the body and metadata and normalize its reader situation, protected facts, SEO contract, and CTA into a saved plan without redrafting, then run Stages 4-7 |
| Resume interrupted work | Read or reconstruct `workflow-status.md`, then resume at the earliest incomplete stage |
| Revise a saved plan or page | Use the saved reader strategy; rerun the Stage 2 brief if reader situation or intent changed or is missing, then update the plan and rerun Stages 3-7 if its contract changes; for a body edit, use `seo-writing` in `revise` mode with existing copy, then run Stages 4-7 |
| Explicitly skip humanization | Record Stages 4-5 as skipped by user, run Stage 6 and Stage 7 |
| Explicitly skip grammar | Record Stage 6 as skipped by user, then run Stage 7 |

For prompt-only and audit-only replies in chat, create no file or status unless
the user requests saved output. Saving a standalone prompt or audit does not
start a staged page workflow or create `workflow-status.md`. A prompt
exported after planning may be saved to `prompt.md` but cannot replace reader
strategy, facts, constraints, keyword decisions, or sections in
`content-plan.md`. For a saved page route, update prompt artifact presence in
status after export; a change to
the prompt alone does not invalidate the draft. A requested checkpoint pauses
only at the point the user specifies.

For external-copy revision, preserve the supplied draft before normalization.
Extract its body and metadata, label unsupported claims and missing sources in
the plan, and keep editorial notes out of `content.md`. Limit edits to the
requested fixes and retain unaffected sections. A change to intent, product
constraints, CTA, or supplied keywords updates the plan first. Record evidence gaps as
publication blockers.

## Draft gate and editorial guardrails

- Require product identity and category, at least one actual capability or
  workflow supplied by the user or supported by product materials, a defined
  reader task, and a primary CTA action before new body copy. Record each
  capability's source and approval status. If a field is missing or only
  inferred, finish and save the plan, mark the workflow blocked, and name the
  needed input.
- Treat the focus keyword as a query signal, not proof of product fit. Split
  mixed search intents into separate page recommendations.
- Use supplied or cited facts. Missing evidence becomes a specific publication
  blocker; unsupported claims stay out of visible copy.
- Use natural keyword placement unless the user supplied numeric targets.
  New keyword suggestions stay optional until selected.
- Keep one reader decision and one primary CTA path. The reader may be an end
  user; choose try, sign up, install, or purchase only when product facts
  support that action. Secondary CTAs may support the same next step.
- The route covers English SaaS feature, use-case, audience, industry, and
  product pages. Route informational blog work to `seo-blog`, third-party
  guest posts to `seo-guest-post`, and announcements to `seo-pr`. Local SEO,
  ecommerce, programmatic SEO, YMYL, and competitor comparison need a
  dedicated scope.
- Humalizer and Stop Slop run on the default route unless the user opts out.
  Required remote instructions must be available for those stages. Harper is
  optional and a missing CLI is recorded as a skip.
