---
name: seo-landing-page
description: >-
  Plan, write, revise, and save complete English SaaS SEO landing pages for
  feature, use-case, audience, industry, and product keywords. Use when the user
  wants a commercial or transactional landing page, landing-page content plan,
  copy from an outline, or an end-to-end keyword-to-page workflow. Generate a
  reusable landing prompt, preserve factual boundaries, align one page promise
  and CTA, humanize the copy, run a directness review, and optionally grammar
  check it. Do not use for blog posts or press releases; use seo-blog or seo-pr.
---

# SEO Landing Page

Coordinate a complete SaaS landing-page workflow. Load only the stage needed.
Blader Humanizer and Stop Slop are remote runtime dependencies; do not install,
clone, or cache them in the project.

Read [runtime-trace.md](references/runtime-trace.md),
[artifacts.md](references/artifacts.md), and
[routing.md](references/routing.md) before running the workflow.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: false
humanization_required: true
grammar_check: if_available
```

Override only when the user asks for a checkpoint, prompt-only output, or no
humanization.

## Dependencies

| Stage | Required source |
| --- | --- |
| Prompt | `../seo-landing-prompt/SKILL.md` |
| Plan, draft, revise, or audit | `../seo-writing/SKILL.md` |
| Fact-safe humanization | `../humalizer/SKILL.md` |
| Blader rewrite | `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md` |
| Stop Slop review | `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md` plus linked references as needed |
| Grammar check | `../harper-grammar/SKILL.md` |

Fetch remote Markdown for the current run only. Resolve Stop Slop reference
links against its pinned GitHub Raw directory. Do not run `npx skills add` or
persist downloaded copies. A missing local writing skill or required remote
source blocks the run; a missing `harper-cli` only skips grammar checking.

## Runtime trace

Follow [runtime-trace.md](references/runtime-trace.md). Emit
`[seo-landing-page][stage N][kind] status: detail` updates. Do not silently load a sibling skill, contact a remote service, run a CLI, or write an artifact.
Do not report `completed` until the action finished.

## Default keyword-to-page sequence

Run all stages without an approval checkpoint when the user supplies keywords
and asks for a finished landing page.

1. Apply `seo-landing-prompt`; preserve unknown facts as placeholders and use
   natural keyword mode unless the user supplied numeric targets.
2. Save `seo-content/<keyword-slug>-landing/prompt.md`.
3. Resolve page subtype, audience, market, language, page promise, and primary
   CTA from supplied context. Never invent product behavior, proof, pricing,
   integrations, or destinations. Record unresolved publication blockers.
4. Apply `seo-writing` in `plan` mode with a commercial or transactional intent.
5. Save `content-plan.md`.
6. Apply `seo-writing` in `draft-from-structure` mode. Use the saved prompt for
   facts, keywords, audience, and CTA; use the saved plan for the page promise,
   section jobs, evidence, and decision sequence.
7. Save `content.md` with humanization, Stop Slop, and grammar statuses pending.
8. Apply `humalizer` plus the pinned Blader instructions while preserving the
   SEO contract. Parent owns the merge into `content.md`.
9. Apply the pinned Stop Slop review. Preserve facts, metadata, headings,
   required keywords, links, caveats, and CTA. Parent owns the merge and save.
10. Apply `harper-grammar` when available. Accept only high-confidence allowed
    fixes, update the audit, and save the final page.

Update `workflow-status.md` after every stage. When an earlier artifact changes,
reset downstream statuses and resume from the earliest affected stage.

## Landing-page contract

### Resolve one commercial job

Identify the audience, trigger, comparison or buying task, desired outcome,
objections, and next step. Select one landing-page subtype and one supportable
promise. Split unrelated intents into separate page recommendations instead of
building a catch-all page.

### Use a decision-led structure

Start from this architecture, then remove or reorder sections that do not help
the reader decide:

1. Hero: audience, supportable outcome, product mechanism, and primary CTA
2. Problem context: the costly current workflow and relevant alternatives
3. How it works: actual inputs, steps, review points, outputs, and limits
4. Outcomes: benefits tied to verified capabilities
5. Proof: approved customer evidence, product demonstration, security,
   integrations, or implementation detail
6. Objections or FAQ: material decision questions with supportable answers
7. Primary CTA repeated only at natural decision points

Do not publish generic feature lists, per-card CTAs, unsupported superiority
claims, or sections that exist only for keyword placement.

### Protect facts and conversion coherence

- Use only supplied or cited product facts.
- Mark `[fact needed]`, `[proof needed]`, and `[destination needed]` rather than
  fabricating details.
- Use one focus keyword naturally in the title tag and H1. Pair the H1 with a
  specific, supportable benefit.
- Use one primary CTA and one post-click action. Secondary CTAs may support the
  same path only.
- Keep the title, H1, hero, proof, and CTA aligned to the same promise.
- Treat the audience as capable adults. Use plain language without obvious
  filler, patronizing explanations, or SaaS hype.

## Route handling

Use [routing.md](references/routing.md) for prompt-only, plan-only,
draft-from-structure, revision, humanization-only, and resume requests. Reject
blog and press-release work with the correct sibling skill recommendation.

## Completion

A default run completes only when the final `content.md` and
`workflow-status.md` are saved and Stages 8-10 are completed or accurately
recorded as skipped/failed under their blocking rules. Report the artifact path
and every publication blocker; never promise rankings or conversions.
