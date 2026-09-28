---
name: seo-blog
description: >-
  Plan, write, revise, and save evidence-led English SaaS SEO blog posts from a
  topic, keyword, brief, or supplied outline. Use for informational SaaS blog
  content, how-to guides, definitions that support a real task, frameworks,
  problem-solving articles, product-led education, metadata, or finished-blog
  audits. Resolve reader intent, create a useful content plan, draft from that
  plan, humanize the prose, run a directness review, and optionally grammar
  check it. For third-party guest posts, use seo-guest-post; do not use for
  landing pages or press releases.
---

# SEO Blog

Coordinate a complete SaaS blog workflow. A blog starts from the user's topic,
keyword, brief, or outline; it does not use `seo-landing-prompt`. Blader
Humanizer and Stop Slop remain remote runtime dependencies and must not be
installed, cloned, or cached in the project.

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

Override only when the user asks for a checkpoint, plan-only output, or no
humanization.

## Dependencies

| Stage | Required source |
| --- | --- |
| Plan, draft, revise, or audit | `../seo-writing/SKILL.md` |
| Fact-safe humanization | `../humalizer/SKILL.md` |
| Blader rewrite | `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md` |
| Stop Slop review | `https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md` plus linked references as needed |
| Grammar check | `../harper-grammar/SKILL.md` |

Fetch remote Markdown for the current run only. Resolve Stop Slop references
against its pinned GitHub Raw directory. Do not run `npx skills add` or persist
remote copies. A missing local writing skill or required remote source blocks
the run; a missing `harper-cli` only skips grammar checking.

## Runtime trace

Follow [runtime-trace.md](references/runtime-trace.md). Emit
`[seo-blog][stage N][kind] status: detail` updates. Do not silently load a sibling skill, contact a remote service, run a CLI, or write an artifact.
Do not report `completed` until the action finished. Parent owns the merge and every file write.

## Default topic-to-blog sequence

Run all stages without an approval checkpoint when the user requests a finished
blog post.

1. Resolve the focus topic or keyword, audience, market, language, reader task,
   useful next action, supplied evidence, and factual boundaries. Do not invent
   product behavior, data, quotes, sources, customers, or internal links.
2. Apply `seo-writing` in `plan` mode. Select one informational intent, one
   specific reader promise, and a section structure that helps complete a task
   or decision. Save `content-plan.md`.
3. Apply `seo-writing` in `draft-from-structure` mode. Treat the saved plan as
   the drafting contract and preserve its evidence requirements, constraints,
   selected keywords, and product boundaries.
4. Save `content.md` with humanization, Stop Slop, and grammar statuses pending.
5. Apply `humalizer` plus the pinned Blader instructions while preserving facts,
   citations, technical meaning, metadata, links, and keyword intent. Parent
   owns the merge into `content.md`.
6. Apply the pinned Stop Slop review. Remove residual filler and repetitive
   rhythm without erasing necessary nuance or domain terms. Parent owns the
   merge and save.
7. Apply `harper-grammar` when available. Accept only high-confidence allowed
   fixes, update the audit, and save the final post.

Update `workflow-status.md` after every stage. When an earlier artifact changes,
reset downstream statuses and resume from the earliest affected stage.

## Blog contract

### Serve the reader's actual task

Identify who searches, what triggered the search, what they already know, the
result they need, and the hard questions that affect that result. A keyword is
not a topic by itself. Select a useful angle that promises a direct answer,
procedure, decision framework, diagnosis, template, or evidence-led explanation.

Split commercial landing-page intent, competitor comparisons, and unrelated
subtopics into separate recommendations. Do not stretch a weak topic to hit a
word count.

### Build a useful article structure

Use this architecture as a starting point, then remove or reorder anything the
reader does not need:

1. Clear title tag and H1 aligned to one reader promise
2. Direct answer or orientation in the opening
3. Method, framework, criteria, or steps suited to the query
4. Concrete examples, screenshots, data, templates, or expert evidence
5. Limits, alternatives, trade-offs, and mistakes that change the outcome
6. Natural product connection only where it helps complete a real step
7. One useful next action instead of a repetitive summary conclusion

Every section must answer a distinct question, enable a decision, teach an
action, provide evidence, or explain a material limit.

### Protect usefulness and evidence

- Use only supplied or cited facts. Mark `[source needed]`, `[example needed]`,
  or `[product fact needed]` rather than fabricating support.
- Answer early; do not delay useful information with a generic introduction.
- Use the focus keyword naturally in the title tag and H1. Do not create a
  heading for every keyword or invent density targets.
- Treat the supplied keyword inventory as complete unless the user explicitly
  requests keyword research. Do not turn inferred semantic phrases into
  required or selected keywords; keep any new suggestions optional until the
  user or workflow selects them.
- Keep product mentions proportional. The article must remain useful without
  the product pitch.
- Cite external claims near the statement they support. Do not cite search
  result pages or imply that an owned source independently validates itself.
- Treat readers as capable adults. Define only terms the recorded audience may
  not know, and remove obvious advice, fake beginner stories, and SaaS hype.

## Route handling

Use [routing.md](references/routing.md) for plan-only, draft-from-structure,
revision, audit, humanization-only, and resume requests. Recommend
`seo-landing-page` for commercial landing pages, `seo-guest-post` for
third-party contributed articles, and `seo-pr` for announcements.

## Completion

A default run completes only when final `content.md` and `workflow-status.md`
are saved and Stages 5-7 are completed or accurately recorded as skipped/failed
under their blocking rules. Report the artifact path, evidence gaps, and
publication blockers. Never promise rankings, traffic, or conversions.
