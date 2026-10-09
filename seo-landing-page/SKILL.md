---
name: seo-landing-page
description: >-
  Plan, write, revise, and save English SaaS feature, use-case, audience,
  industry, and product landing pages for commercial or transactional queries.
  Use for a landing-page plan, finished page, draft from an outline, revision,
  audit, or resume. Produce a reusable landing prompt only when requested.
  Route informational blog posts to seo-blog, third-party guest articles to
  seo-guest-post, and announcements to seo-pr.
---

# SEO Landing Page

Coordinate one decision-led landing page. The parent workflow owns every file
write, stage status, and merge. Read [artifacts.md](references/artifacts.md)
before a saved run. Read [routing.md](references/routing.md) for non-default
requests and [runtime-trace.md](references/runtime-trace.md) when reporting
progress.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: source_questions_only
humanization_required: true
grammar_check: if_available
```

Run the selected route without a checkpoint unless the user requests one.
Essential source questions may interrupt the
run; preserve the pending question and interview count, then resume after the
answer. Optional gaps can be omitted with a provisional packet. A plan-only
request returns its plan and any pending question without requiring an
interview to complete the requested planning work.
For a targeted correction, preserve untouched passages. Later editing stages
review the remaining text without rewriting it outside the authorized scope;
record unrelated defects and publication blockers. Pass that scope to each
editing skill, including Humalizer and grammar review.

User-requested prompt-only, plan-only, or no-humanization work follows its
matching branch in [routing.md](references/routing.md).

## Dependencies

| Work | Source |
| --- | --- |
| Evidence-labeled reader brief during planning | `../seo-audience-strategy/SKILL.md` |
| Plan, draft, or revise | `../seo-writing/SKILL.md` |
| Existing-copy audit or feature-refresh diagnosis | `../seo-content-review/SKILL.md`; returns findings and an update brief, this parent owns saving and revision |
| Distinctive source gate and one-at-a-time interview | `../distinctive-content/SKILL.md`, called by `seo-writing` |
| Requested reusable prompt | `../seo-landing-prompt/SKILL.md` |
| Fact-safe rewrite, including one Blader fetch | `../humalizer/SKILL.md` |
| Final prose review | `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md` plus linked references as needed |
| Optional grammar check | `../harper-grammar/SKILL.md` |

Humalizer fetches the pinned Blader instructions once per run from
`https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md`.
The parent fetches Stop Slop for the current run and resolves its reference
links against the pinned GitHub Raw directory. Do not run `npx skills add`,
install, clone, or cache remote instructions in the project. A missing required
local skill or required remote source blocks the default run. Missing
`harper-cli` skips Stage 6.

## Runtime trace

Use `[seo-landing-page][stage N][kind] status: detail` for route, stage
milestones, exceptions, and result. Do not silently load a sibling skill, contact a remote service,
run a CLI, or write an artifact. Group successful
operations into concise stage updates; record operation details in
`workflow-status.md`. Do not report `completed` until the action finished.

## Default keyword-to-page sequence

1. **Intake.** Select one page subtype and commercial or transactional reader
   task. Record the user's primary keyword and every supplied supporting or
   long-tail phrase verbatim, including must-use, avoid, placement, or numeric
   targets.
   Record the audience, market, language, product identity and category,
   actual capability or workflow, limits, available proof, one primary CTA
   action and destination, brand voice and any sample source, and useful links.
   Check user-provided product URLs and product files in the active workspace
   when available.
   Label supplied or documented facts with source and approval status,
   hypotheses, and missing facts. Save the route and intake state in
   `workflow-status.md`. This stage ends when each field is either grounded in
   supplied material or explicitly marked missing.
2. **Plan.** Apply `seo-audience-strategy` in single-content brief mode using
   the intake evidence and supplied queries. Identify one reader situation,
   the decision this page supports, journey questions, factual boundaries,
   and evidence or validation gaps. Preserve the query interpretation, inspected
   intent evidence and uncertainty, expected answer form, and reader completion
   signal. Label each material insight as supplied or checked evidence,
   `hypothesis`, or `unknown`; when only keywords are
   available, keep the brief provisional. Check existing-page coverage only
   when pages are supplied or a coverage audit is requested. Pass that transient
   brief and original intake to `seo-writing` in `plan`
   mode. Save its full plan—including the `Keyword map` schema and any
   user-set count—to `content-plan.md` with one supportable page promise,
   the full `distinctive-content` packet, pending question and count, section
   mapping, and writing constraints; do not re-author map columns here. Choose
   one coherent landing-page intent;
   recommend a separate page for another intent. A supplied primary that cannot
   support this truthful page promise blocks drafting until the mismatch is
   resolved. `content-plan.md` is the sole persisted drafting contract.
   For a new page, require a known product identity and category, an actual
   capability or workflow, a reader task, and a CTA action before drafting.
   If any is missing, record the gap and `blocked` workflow state in
   `workflow-status.md`, leave Stage 2 pending with `Next stage: 2`, and stop
   after the incomplete plan. For a supplied-copy revision,
   retain supported claims, mark unverified ones as publication blockers, and
   make only the requested edits that can be supported. This stage ends when
   the brief and distinctive-content packet have informed the saved plan and
   the draft gate has been evaluated when needed. If the packet is
   `interview-needed`, save the incomplete plan and one pending question with
   Stage 2 pending and `Next stage: 2`; resume by recording the answer in the
   existing packet. A `blocked` packet stops new body drafting; a `provisional`
   packet permits only a supported promise with optional claims omitted. The
   brief and packet are stage outputs, not separate saved artifacts.
3. **Draft or revise.** Apply `seo-writing` in `draft-from-structure` mode for
   new copy or `revise` mode with the existing body, metadata, plan, and
   requested change. Use the saved keyword map's selected terms only where
   their section jobs fit; a required phrase that cannot fit naturally becomes
   an audit finding, not awkward visible copy. Save one publishable page body
   with exactly one H1 to `content.md` and its title tag, meta description,
   and URL slug to `seo-metadata.md`. Transfer strategy, evidence gaps, audit
   findings, and publication blockers to `workflow-status.md`; keep editorial
   notes and unsupported placeholders out of the page body. Parent owns the
   merge into `content.md`. This stage ends
   when both page artifacts are saved and match the plan's reader decision,
   promise, CTA, and mapped distinctive contribution.
4. **Humanize.** Apply `humalizer`, which owns one pinned Blader fetch and
   returns revised copy under the saved plan's factual and SEO constraints.
   Parent owns the merge into `content.md` and records material changes. This
   stage ends when the revised body is saved and protected facts, metadata,
   links, keywords, caveats, CTA, and distinctive packet details have been checked.
5. **Review prose.** Apply the pinned Stop Slop instructions to remaining
   filler and repetitive cadence. Preserve the same protected contract. Parent
   owns the merge and save. This stage ends when the revised body is saved and
   material changes are recorded.
6. **Check grammar.** Apply `harper-grammar` to the saved English body when
   available. Accept only high-confidence corrections that preserve meaning,
   merge the result, and record findings plus the actual dialect or spelling
   preservation mode and any limitation. If unavailable or explicitly declined,
   record the skip. This stage ends when the checked body is saved or the skip
   reason is recorded.
7. **Verify.** Compare `content.md` and `seo-metadata.md` with the saved plan.
   Confirm the page answers its planned reader questions in decision order,
   gives each major section a mapped packet item, grounded concrete answer, or
   reason no unique source is needed, and respects factual boundaries. Confirm
   one H1, supported claims, one coherent CTA path, useful links, and no editorial notes in the body. Apply
   `distinctive-content` in `audit` mode and the skeptical reader walkthrough in
   the [helpful content standard](../distinctive-content/references/helpful-content.md) to the final
   copy. Repair local defects; record any unresolved central answer, evidence,
   or reasoning gap as a publication blocker. Prose polish cannot pass this gate.
   Reconcile every supplied keyword against the final copy and metadata:
   record natural placement for used terms and the reason for each omission
   or unmet must-use request. Check exact counts only for targets the user
   supplied, and verify user-prohibited phrases are absent. Save the final
   audit, stage states, publication blockers, and readiness in
   `workflow-status.md`.
   This stage ends only when the verification is recorded and all required
   stages have completed or were skipped by explicit user direction.

Update `workflow-status.md` after each persistent stage. A failed required
remote stage leaves the workflow blocked. Harper unavailability is
non-blocking. When an upstream artifact changes, reset affected downstream
stages and follow [artifacts.md](references/artifacts.md) to resume.

## Landing-page contract

Identify the reader's trigger, comparison, adoption, or purchase task, desired
outcome, objections, and next step. The reader may be an individual end user or
a business buyer. Choose one page subtype and one supportable promise.
Split unrelated intents into separate page recommendations.

Use the following only as a starting architecture; keep sections that advance
the reader's decision:

1. Hero: audience, supportable outcome, product mechanism, primary CTA
2. Problem context and relevant alternatives
3. How it works: actual inputs, steps, review points, outputs, limits
4. Outcomes tied to supplied or documented capabilities
5. Proof from approved evidence or product demonstration
6. Material objections or FAQ with supportable answers
7. The same primary CTA at natural decision points

Use supplied or cited product facts. Record missing proof or CTA destinations
as publication blockers and omit unsupported claims from the page. Place one
focus keyword naturally in the title tag and H1. Align the title, H1, hero,
proof, and CTA to the same promise. Write plainly for capable adults; each
section must help the reader decide. Match the CTA to the supported product
path: try, sign up, install, or purchase only when that action is supported.

## Completion

Report the saved page paths, workflow state, publication readiness, and every
blocker. A plan-only route completes when its plan and status are saved, with
publication readiness not assessed. A full-page route completes when required
editing stages and verification finish; publication readiness separately
checks the facts, supporting evidence, required links, and CTA destination
needed to publish. A blocked draft gate or failed required remote source is
not a completed full-page workflow. Never promise rankings or conversions.
