---
name: seo-blog
description: >-
  Plan, write, revise, or audit an English SaaS SEO article for the company's
  own blog. Use for a topic, keyword, brief, supplied outline, or existing
  draft. Full drafts save a plan, article, metadata, and editorial status;
  audit-only requests return findings without changing files. Route a
  third-party contributed article to seo-guest-post, a commercial page to
  seo-landing-page, and an announcement to seo-pr.
---

# SEO Blog

Coordinate an owned-site blog post from reader intent through a verified draft.
Start from the user's topic, keyword, brief, outline, or existing copy. A blog
does not use `seo-landing-prompt`. Read [routing.md](references/routing.md) to
select the route, [artifacts.md](references/artifacts.md) before saving or
resuming, and [runtime-trace.md](references/runtime-trace.md) for progress.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: false
humanization_required: true
grammar_check: if_available
```

The user may request a checkpoint, a partial deliverable, or no humanization.
Complete the selected route without an approval pause otherwise.

## Dependencies

| Stage | Source and owner |
| --- | --- |
| 2. Reader strategy | `../seo-audience-strategy/SKILL.md` returns a focused, evidence-labeled `single-content brief`; this parent passes it into planning |
| Plan, draft, revise, or audit | `../seo-writing/SKILL.md` returns stage output; this parent saves and merges |
| 4. Humanize | `../humalizer/SKILL.md` owns one rewrite and fetches `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md` |
| 5. Directness review | This parent applies `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md` and linked references as needed |
| 6. Grammar | `../harper-grammar/SKILL.md` returns checked copy and findings when `harper-cli` is available |

Read remote Markdown for this run only. Resolve Stop Slop references against
its pinned GitHub Raw directory. Do not run `npx skills add`, install, clone,
or persist remote copies in the project. A missing required local skill or
required remote source blocks the workflow; unavailable Harper skips Stage 6.

## Runtime trace

Follow [runtime-trace.md](references/runtime-trace.md). Emit
`[seo-blog][stage N][kind] status: detail` at milestones and exceptions. Do not silently load a sibling skill, contact a remote service, run a CLI, or write an artifact.
Do not report `completed` until the action finished. Parent owns the merge and every file write.

## Default sequence

1. **Intake.** Record the exact user-supplied primary keyword, when provided,
   and every supplied supporting or long-tail phrase, including any must-use,
   avoid/prohibited, placement, or count instructions; distinguish them from
   optional inferred phrases. Record the focus topic, audience, market,
   language, informational intent, reader task, next useful action, supplied
   evidence, sourced product facts, factual boundaries, brand voice and any
   sample source, and known internal links. Label hypotheses and unknowns. An
   informational article may have `Primary CTA and destination: none`; its next
   useful action need not be a sales CTA. This stage is complete when the
   reader promise and factual boundaries are explicit enough to plan without
   inventing a fact or URL, and the supplied keyword inventory is preserved
   without additions or losses.
2. **Plan.** Apply `seo-audience-strategy` in focused `single-content brief`
   mode for this article. Give it the supplied audience and product context,
   evidence, primary and long-tail keywords, and any existing pages the user
   supplied. Ask it to resolve the reader's situation, journey question,
   decision criteria, proof needs, and useful next action, with evidence labels.
   Treat missing audience details as hypotheses or unknowns; assess site
   coverage only when pages are supplied or the user requests it. Then pass
   that transient brief and the complete original keyword inventory to
   `seo-writing` in `plan` mode. Normalize any supplied outline into the
   `seo-writing` plan schema, preserving evidence labels, constraints, and the
   user's keyword wording. Save the full plan—including its `Keyword map` and
   any user-set count—to `content-plan.md`; do not re-author map columns here. If a supplied primary
   differs from the brief's suggested focus phrase, retain it and resolve any
   intent mismatch explicitly before drafting. Fold the brief into the plan;
   the parent saves no separate audience artifact. A supplied primary that
   cannot support this article's intent blocks drafting until the mismatch is
   resolved. `content-plan.md` is the sole persisted drafting contract.
   This stage is complete when the plan contains the evidence-labeled
   reader situation and decision, section jobs, proof and validation needs,
   every supplied keyword's disposition, product limits, and next action.
3. **Draft or revise.** Apply `seo-writing` in `draft-from-structure` mode for
   new copy or `revise` mode with the existing article, metadata, plan, and
   requested change. Parent maps the returned draft and metadata to `content.md` and
   `seo-metadata.md` as specified in [artifacts.md](references/artifacts.md).
   Put evidence gaps, link suggestions without verified destinations, and the
   draft audit in `workflow-status.md`. Use selected long-tail terms where they
   advance their planned section jobs, with natural wording. This stage is
   complete when the article has exactly one H1, no editorial wrapper, its
   metadata is separate, and any keyword departure from the plan is recorded.
4. **Humanize.** Apply `humalizer`, which fetches and applies the pinned Blader
   instructions once. Preserve the saved plan's facts, citations, technical
   meaning, links, selected keyword roles, user-specified exact wording, and
   CTA if present. Parent merges the
   returned article into `content.md`. This stage is complete when the merged
   article and material-change audit are saved. An unavailable Blader source
   blocks the workflow.
5. **Review directness.** Fetch and apply the pinned Stop Slop instructions to
   the merged article. Remove residual filler and repetitive rhythm while
   retaining necessary nuance and domain terms. Parent merges and saves the
   result. This stage is complete when the review result and material changes
   are recorded. An unavailable Stop Slop source blocks the workflow.
6. **Check grammar.** Apply `harper-grammar` when available, accept only
   high-confidence allowed fixes, and merge them into `content.md`. Record the
   finding and correction counts. Mark this stage skipped when the CLI or its
   structured output is unavailable, or when the user opts out. This stage is
   complete when the checked article is saved or the skip reason is recorded.
7. **Verify and close.** Compare the final article and metadata with the plan.
   Confirm one H1, the reader situation and decision, intent, section jobs,
   needed proof, supported claims, citations, links, and any CTA destination.
   Reconcile the final article and metadata against
   every user-supplied term in the plan: check the planned focus keyword in the
   title tag and H1; check each selected supporting or long-tail term in its
   planned role, or document a natural variant or changed disposition; and
   retain the reason for every omitted term. Check user-prohibited phrases are
   absent and user-required placement or occurrence counts against the plan.
   Repair any missing user-set requirement where the copy
   can meet it naturally and factually; otherwise record a publication blocker.
   Save the keyword reconciliation, final audit, stage
   states, evidence gaps, workflow state, and publication readiness in
   `workflow-status.md`. This stage is complete when every requested stage is
   completed or legitimately skipped, every supplied term is accounted for,
   and every publication blocker is visible.

Update `workflow-status.md` after every performed stage. On revision or resume,
apply the reader-strategy refresh rule in [routing.md](references/routing.md)
and preserve user edits. Reset dependent stages only when the plan actually
changes. A required remote failure records a blocked workflow, not a completed
one.

## Editorial standard

Select one informational intent and one specific reader promise. Identify who
searches, what triggered the search, what they know, and the result they need.
Make the opening useful immediately. Include methods, criteria, examples,
evidence, and limits only where they advance the reader's task. Each section
must answer a distinct question, support a decision, teach an action, or show
a material limit. Product mentions belong where the verified capability helps
complete a real step; the article must still be useful without a product pitch.

Use only supplied or cited facts. Put unverifiable claims in the status file as
evidence gaps, or omit them from the article. Cite external claims near the
statement they support; an owned source does not independently prove its own
outcomes. Use the focus keyword naturally in the title tag and H1. Treat the
supplied keyword inventory as complete unless research was explicitly
requested. Select long-tail terms by reader intent and article fit; keep
inferred phrases optional. Apply numeric keyword targets only when the user
supplies them. Write for capable adults: define
only unfamiliar terms and remove generic introductions, obvious advice, and
SaaS hype. Do not stretch a weak topic to reach a word count.

## Completion

A full workflow completes when `content-plan.md`, `content.md`,
`seo-metadata.md`, and `workflow-status.md` are saved, Stages 4-5 succeeded or
were skipped by the user's explicit choice, and Stage 6 succeeded or has a
recorded non-blocking skip. Workflow completion does not mean the article is
ready to publish: report publication readiness and every blocker separately.
Report artifact paths and never promise rankings, traffic, or conversions.
