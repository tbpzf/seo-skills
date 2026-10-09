---
name: seo-writing
description: >-
  Plan, draft, revise, or audit English SaaS landing-page and owned-site blog content as
  a stage called by seo-landing-page or seo-blog. Use directly only when the
  user explicitly wants a standalone plan, draft or revision from a supplied
  structure, or read-only copy audit. Route finished landing pages to seo-landing-page and
  finished owned-site articles to seo-blog; third-party articles belong to
  seo-guest-post.
---

# SaaS SEO Writing

Create helpful, evidence-led English content for a real SaaS audience. Optimize for discovery and decision-making, never for keyword density or a guessed ranking formula.

Before `plan`, `draft-from-structure`, or a substantive `revise`, use a focused single-content
brief from [`seo-audience-strategy`](../seo-audience-strategy/SKILL.md). The
landing or blog parent supplies that brief as a transient stage output on the
first plan, then folds it into the saved `content-plan.md`; return a missing
or stale reader situation to that parent for refresh. For direct use,
reuse a supplied plan's evidence-labeled reader task, decision criteria,
journey question, and gaps when they still fit the audience and intent.
Otherwise call `seo-audience-strategy` in single-content mode and fold its
brief into the working plan before writing. Keep the supplied structure and
keyword inventory. Explicit `audit` requests delegate to
[seo-content-review](../seo-content-review/SKILL.md) in `review` mode, without
an audience brief or rewrite. A keyword is a clue to the reader's task, not
evidence of their circumstances;
label inferences as `hypothesis` or `unknown`.

For a local wording, typo, or supplied factual correction, use the supplied
copy and any existing plan as the working contract. Keep its promise, supported
substance, and untouched passages; record uncertain pre-existing claims as
findings. A missing plan or unrelated source gap does not require a new reader
brief or gate. Ask only when a fact essential to the requested correction is
unavailable. This branch creates no new substantive claims.

During planning, run [`distinctive-content`](../distinctive-content/SKILL.md)
once with the reader brief and available material, or reuse a packet whose
sources and scope still fit. Research can supply checked facts and reasoned
synthesis; interview only for essential knowledge the agent cannot obtain.
Return an incomplete plan with its packet and one pending question when the
status is `interview-needed`; body drafting waits for the answer. A
`provisional` packet permits a supported answer with optional gaps omitted and
recorded. A `blocked` packet stops new substantive body drafting; the local-correction
branch can still return supported edits with pre-existing blockers. Reuse the packet for
`draft-from-structure` and local revisions; refresh affected material when the
promise, sources, or claims change. The parent folds it into the saved plan.

**Clarity bar:** keep general prose near a grade 6–8 reading level so readers can grasp it on the first pass. Write for a capable adult. Simplify the *language*, not the reader, subject, or job. If a busy expert cannot skim it, rewrite; if the prose explains obvious ideas or talks down to the reader, remove it.

When this skill runs inside [seo-landing-page](../seo-landing-page/SKILL.md) or
[seo-blog](../seo-blog/SKILL.md), use the parent-selected `plan`,
`draft-from-structure`, or `revise` mode and return the stage output. This skill
defines the content-plan schema; the parent owns every file write, merge, final
humanization, and `workflow-status.md`.

Shared stages: [`seo-audience-strategy`](../seo-audience-strategy/SKILL.md) supplies the evidence-labeled reader brief; [`distinctive-content`](../distinctive-content/SKILL.md) supplies the source inventory, one-at-a-time interview, and distinctive evidence packet.

The parent's saved `content-plan.md` is the sole persisted drafting contract for
both owned-site routes: evidence-labeled reader situation, reader promise,
intent, section jobs, the complete supplied keyword
inventory and per-term decisions, product facts and sources, brand voice and
its sample source, language, market, next action, and distinctive packet status and mapping. A landing-page `prompt.md`, when
requested, is a reusable export of that plan, never a competing input. If a
required value is absent, return the gap to the parent stage that owns it;
the parent updates the plan or records a blocker before drafting. Omit
unsupported claims and record unresolved evidence or destinations in the
editorial audit.

This skill covers:

- SaaS landing pages: feature, use case, audience, industry, or product pages
- SaaS educational blog posts: definitions, how-to guides, and problem-solving articles

It does not cover local SEO, ecommerce, programmatic SEO, YMYL topics, or competitor-comparison pages. State the limitation and ask to narrow or use a dedicated workflow when one of those is requested.

## Operating modes

Choose one mode from the request:

| Mode | Input | Output |
| --- | --- | --- |
| `plan` | Topic or keyword(s), audience/product context, and available evidence | One specific topic, audience-situation analysis, and a section-level content structure; no body copy |
| `draft-from-structure` | A supplied or saved content structure plus factual/SEO constraints | Complete content that follows and, when necessary, safely corrects the structure |
| `revise` | Existing copy, metadata/plan when available, and a specific requested change | Targeted revised copy, existing or updated metadata, and material-change audit |
| `audit` | Existing copy | Prioritized findings and targeted repairs; no rewrite unless requested |

Do not merge `plan` and `draft-from-structure` into one invisible step inside
the parent workflow. The saved plan is the handoff contract and recovery point.

## Editorial contract

Apply the [helpful content standard](../distinctive-content/references/helpful-content.md) during
planning and final review. Give the reader one supportable promise, a complete
answer, and a contribution whose evidence and reasoning explain its value.
Keep facts, attribution, and limits attached through every rewrite. Invented
product behavior, experience, quotes, results, and sources are forbidden.

A landing page needs one primary CTA path; a blog may have no sales CTA.
Product mentions must help the current task. Keep keyword requirements finite,
truthful, and natural. Put missing proof and editorial placeholders in the
plan or audit, outside publishable copy. Use plain language for capable adults;
length and readability scores are review prompts, never quality gates.

## Intake

Identify or request only the missing information needed to produce accurate copy:

| Required input | Why it matters |
| --- | --- |
| Page type, primary keyword or topic, and every supplied supporting or long-tail term | Preserves the user's search targets and page scope |
| Audience: reader or user, current knowledge, task, and constraints | Determines language and proof |
| Product facts when the product is mentioned: capabilities, limits, differentiators, and sources | Prevents invented claims; an informational article may omit a product connection |
| Next action; for a landing page, the primary CTA and post-click action | Keeps the conversion path coherent without forcing a sales CTA into an informational article |
| Brand voice and approved claims | Keeps copy on-brand and supportable |
| Available source material, research access, or essential contributor knowledge | Grounds a useful contribution and determines whether an interview is needed |

Also request, when available:

- Any user-required, prohibited, placement-targeted, or count-targeted keyword
  and its exact instruction
- The existing draft or URL and its target metric
- Customer evidence, screenshots, demos, documentation, or source URLs
- Relevant internal pages and preferred anchor text
- Geographic market, competitors, and SERP notes

For a standalone request, ask for facts before drafting when accurate copy is
otherwise impossible. Inside `seo-landing-page` or `seo-blog`, follow the
parent's minimum drafting gate. Record missing facts in the plan; use safe
omissions in copy and mark any indispensable missing fact as a blocker.

## Workflow

### 1. Research

1. Preserve the user's primary keyword and all supplied supporting and
   long-tail terms verbatim. Note exact duplicates, contained phrases, and
   terms with a different search intent; keep the original inventory even
   when a term will be omitted from this page. If the request supplies a topic
   but no primary keyword, label the proposed focus phrase as inferred.
2. Transfer the strategy brief's specific reader situation, trigger, current
   knowledge, decision criteria, and next question with their evidence labels.
   Validate the proposed reader task against supplied product facts and query
   intent; keep unresolved details as `hypothesis` or `unknown`.
3. Carry the brief's query interpretation, intent evidence, competing
   interpretations, and uncertainty into the plan. Classify the query without
   treating that label as proof of the reader's task.
4. Define the expected answer form and observable reader completion signal:
   a direct answer, criteria, procedure, template, explanation, or buying support.
5. List the constraints, failure modes, trade-offs, and follow-up questions a
   useful answer must cover. Separate adjacent intents that need another page.
6. Reuse the brief's inspected search evidence. When material intent ambiguity
   remains and research is available, inspect relevant supplied or live results;
   record the sources, market/date where relevant, and what they establish.
   Without access, keep the interpretation provisional. A result pattern is
   evidence about expectations, not a template to copy.
7. Read supplied product materials and list capabilities, limitations, and
   proof with their source and approval status. Distinguish a claim confirmed
   by current documentation from a user-supplied claim that still needs review.
8. Identify the baseline answer and added value: an explained judgment,
   worked example, usable method, checked synthesis, or first-hand evidence.
   Claim competitive novelty only when the relevant pages were inspected.
9. Run or reuse the `distinctive-content` gate as defined above. Preserve its
   full packet, pending question, interview count, and evidence limits; complete
   the section mapping in the plan. Return the plan without body copy for
   `interview-needed` or `blocked` on new substantive work, naming the gap and
   next action. Local corrections follow the exception above.
10. Map the reader's next decision. For a product-led page, confirm that the
   product has credible relevance to the task; for an informational blog with
   no supported product connection, teach the task without inventing one.
11. Carry the brief's existing-coverage decision into the plan. When no pages were supplied, keep coverage `unknown` and continue the requested page. Do not initiate a site audit for a single-content request.

### 2. Topic and content structure

In `plan` mode, select one topic that makes a specific,
supportable promise. Do not use the keyword itself as the entire topic and do
not broaden the topic beyond the reader's likely task.

Return this plan:

```markdown
# Content plan

## Reader intent
- Search intent:
- Query interpretation, inspected intent evidence, alternatives, and uncertainty:
- Expected answer form and reader completion signal:
- Reader situation and current knowledge (evidence or hypothesis):
- Trigger, job, or decision:
- Journey stage and next question:
- Expected outcome:
- Constraints, objections, decision criteria, and follow-up questions:
- Existing coverage and page decision (improve/create/defer/unknown):
- Out of scope:

## Topic
- Working title:
- Reader promise:
- Why this angle is useful:
- Information gain and evidence available:
- Audience evidence sources and validation gaps:

## Distinctive contribution
- Full distinctive-content packet (retain its item table, evidence status,
  source references, baseline answer, added value, reasoning, alternatives,
  limits, pending question, and interview count):
- Section mapping (item IDs, grounded answer, or reason no unique source is needed):

## Keyword map
- Primary keyword (verbatim; `none supplied` if the user gave only a topic):
- Focus keyword for this page (use the supplied primary when coherent; mark
  `inferred` if not supplied):
- Supplied supporting and long-tail keywords (verbatim; `none` if absent):
- User keyword requirements (must-use, avoid, placement, exact-count; `none` if absent):

| Supplied term | Type (primary/supporting/long-tail) | Decision (use/omit) | Reader intent and section role, or omission reason | Planned placement | User-set count (if any) |
| --- | --- | --- | --- | --- | --- |
| <each distinct supplied term, including the primary when supplied> | | | | | |

## Content structure
### <descriptive section heading>
- Reader question/job:
- Key takeaway:
- Evidence, example, or artifact:
- Reader completion check (what the answer must enable):
- Product connection, if genuinely useful:

## Writing constraints
- Page type, market, and page-copy language:
- Keyword policy (natural use by default; count scope and overlap rule only for user-set targets):
- Product facts and provenance (claim, source, approval status):
- External claims and cited sources:
- Prohibited or unverified claims to omit:
- Brand voice and sample source (or `none`):
- Facts or evidence still needed:
- Internal links:
- Next useful action:
- Primary CTA and destination (landing: required; informational blog: `none` when no sales action fits):
- Success measure tied to the reader's next action:
```

Every saved plan must carry the strategy brief's evidence labels, reader task,
journey question, intent evidence and uncertainty, reader completion signal,
decision criteria, and validation gaps as well as the keyword
map, distinctive evidence packet, and writing constraints. Use
`unknown` for an unresolved required value and `none` for an intentionally
absent optional value. Together they are the persisted drafting contract,
whether or not a reusable prompt was exported.

Complete the keyword map before drafting. Keep all supplied phrases in the
verbatim inventory even if duplicated, overlapping, awkward, or off-intent;
one decision row per distinct phrase is enough. Record each term's supplied
type; mark an inferred type as inferred when the user did not label it. Give
selected terms a distinct reader intent and section role, and explain every
omitted term. A supplied must-use term that conflicts with facts or the page's
intent is an explicit conflict for the parent to resolve, not a silent
omission. A selected term may
still have zero exact-match uses if natural copy needs a variant; explain the
change in the editorial audit. Record numeric targets only when the user
supplied them. Never invent counts or add terms merely to fill a portfolio.
If the supplied primary itself cannot support the page promise, mark the plan
blocked and return the mismatch to the parent before drafting; do not silently
substitute a different focus keyword. For a user-set count without a specified
scope, count case-insensitive exact matches in the title tag, meta description,
and rendered body including the H1, headings, and CTA labels. Exclude the URL
slug, alt text, plan, and audit. A complete shorter phrase inside a longer one
counts for both; preserve a different scope if the user supplied one.

Order sections by the reader's learning or decision sequence. Do not force a
definition section when the audience already knows the concept. Do not create
separate headings for synonymous keywords. A section may omit a product
connection when the product would distract from the answer.

Choose one architecture.

#### Educational blog

Use for information-led queries. Answer the question in the opening, then teach the reader how to act.

Use the likely architecture below as a starting point, then remove or reorder
anything the reader does not need:

1. Clear SEO title and H1 aligned to one specific reader promise
2. Direct answer or useful orientation
3. Method, framework, criteria, or steps suited to the query
4. Concrete examples, screenshots, data, templates, or expert evidence
5. Limits, alternatives, and common mistakes that affect the outcome
6. Natural product connection only for a relevant step
7. The next useful action; do not repeat the article as a conclusion

#### SaaS landing page

Use for commercial or transactional queries. Make one audience/use-case promise and support it with proof. Keep this architecture aligned with `seo-landing-prompt` landing prompts.

1. Hero: audience + outcome + product mechanism + primary CTA
2. Problem context and why common alternatives fall short
3. How the product works for this use case
4. Benefit sections tied to specific capabilities
5. Proof: approved customer evidence, integrations, security, or product demonstration
6. Objections or FAQ using only supportable answers
7. Repeat the same primary CTA at natural decision points only (not on every card or step)

Do not use a generic feature dump. Every section must advance the page promise.

### 3. Draft from the structure

In `draft-from-structure` mode, read the entire supplied or saved plan before
writing. Preserve its reader promise and section jobs. Correct a section only
when it conflicts with search intent, verified facts, or usefulness; record the
material correction in the final audit instead of silently following a bad
outline.

- Use one focus keyword for the page promise. Give each selected supporting
  core or long-tail term its planned reader intent or section role from the
  keyword map. Preserve user-required terms when they fit naturally.
- With a sparse keyword set, reduce keyword-bearing headings and placements;
  do not repeat the same terms across every module.
- With a large or mixed-intent set, write only for the coherent cluster in the
  specification. Do not merge separate search intents into one page.
- Give each paragraph one job and lead important sections with a direct answer or claim.
- Deliver the information promised in each section. Include the planned
  decision criteria, steps, examples, evidence, limits, or artifact rather than
  replacing them with motivational prose.
- Give each major section a mapped packet item, grounded concrete answer, or
  reason no unique source is needed. Preserve source, scope, reasoning, and
  limits. Proof gaps remain in the audit; they do not satisfy a promised answer.
- Assume the knowledge level recorded in the plan. Do not define familiar terms,
  narrate obvious steps, or add empty setup such as “In today's fast-paced
  world.”
- Make headings descriptive enough to be scanned without body text.
- Prefer concrete verbs, product behaviors, and observable outcomes over adjectives such as “powerful,” “seamless,” or “best-in-class.”
- Vary nearby wording without reaching for decorative synonyms. If a common
  word or phrase appears repeatedly within a paragraph or in adjacent
  sentences, delete the redundant instance or recast the sentence. Preserve
  exact terminology when precision, SEO intent, or product truth requires it.
- Keep inline series short. Replace vague strings such as “use it to explore,
  compare, discuss, and improve” with one concrete outcome, or split the
  distinct actions into steps. Retain a longer series only when every item is
  necessary and the list format makes it easier to scan.
- Use the plain-language guidance in [reference.md](reference.md). Retain domain terms the audience expects; define only terms the intended reader may not know.
- Link only to pages that genuinely help the reader continue: product, pricing, demo, documentation, case study, or a related guide.
- Include title tag, meta description, H1, URL suggestion, body copy, and
  useful internal links. Include a CTA label only when the saved plan calls for
  one; a blog may end with a useful next action and no sales CTA.

### 4. Revise existing copy

In `revise` mode, read the existing body and metadata (saved files or supplied
text), the available plan or local working contract, and the requested change.
Make the smallest edit that fulfills the
request while retaining unaffected sections, approved facts, citations,
links, and the reader promise. Return the full revised body so the parent can
save it once. Return the existing metadata unchanged unless the edit changes
its accuracy or promise; identify every metadata change in the editorial
audit. A body revision does not authorize replacing the plan with a new
angle. If the request changes the page's intent, factual constraints, or CTA,
return to `plan` mode first and reset dependent stages.

## Audit loop

After drafting or revision, apply [editorial-review.md](references/editorial-review.md)
for metadata, evidence, keyword reconciliation, clarity, and reader respect.
Run `distinctive-content` in `audit` mode against the draft and after any
substantial rewrite. Apply the shared helpful-content walkthrough to the final
copy: attempt the promised task and check the reasoning, examples, and limits.
Repair local defects and rerun affected checks; return exact unresolved gaps
as publication blockers. These are the internal draft/revision checks. For
explicit `audit` mode, return the `seo-content-review` stage result instead of
running a second review here. A proof-gap note cannot make an unanswered
central promise pass.

### Humanization ownership

Apply the full [Humalizer](../humalizer/SKILL.md) review when this skill is the
final substantive writing stage. For a local correction, check the affected
passage and return the full copy with only authorized edits; a typo-only
request does not require a remote whole-page rewrite.

Skip the full Humalizer pass inside this skill when `seo-landing-page` or
`seo-blog` is the parent. Those workflows own the Humalizer + Blader, Stop Slop,
and Harper stages. Keep audit A/B here: remove obvious filler and repetitive
CTAs, but do not run a second scored rewrite.

When Humalizer runs here, preserve the reader promise, method, reasoning,
verified claims, citations, keywords, metadata, links, limits, and CTA. Recheck
its final copy with the helpful-content walkthrough and distinctive audit.
Personality edits cannot invent experience or customer proof.

## Deliverable

In `plan` mode, return only the content-plan format from Step 2. In
`draft-from-structure` or `revise` mode, read the supplied plan and return these distinct
parts. The parent saves only the text under `Draft` to `content.md`, the three
SEO metadata fields to `seo-metadata.md`, and the editorial audit to
`workflow-status.md`. Do not duplicate the H1 in the body or put internal
review notes inside publishable copy.

```markdown
## SEO metadata
- Title tag:
- Meta description:
- URL slug:

## Draft
# <H1>
[Publishable page copy with inline links and citations]

## Editorial audit
- Intent and product fit:
- Supplied keyword check (each term: exact use/variant/omission, placement, and reason for any change; user-set counts only):
- Helpful-content walkthrough (pass / repair needed / blocked; completion signal, exact gaps, and repairs):
- Intent evidence and remaining uncertainty:
- Added value, judgment reasoning, alternatives, and limits:
- Usefulness and reader-respect check:
- Structure deviations, if any:
- Sources checked and evidence gaps:
- Internal links still to add, with destinations:
- Publication blockers:
- Distinctive contribution and evidence packet:
- Clarity bar (middle-school readable): pass / fixes made:
- Changes made:
```

In `audit` mode, pass the copy, available plan/metadata, current product evidence,
and review scope to `seo-content-review` in `review` mode. Return its prioritized
findings tied to specific passages and repairs. This compatibility entry stays
read-only. When a content parent invoked this skill, return stage output and let
that parent handle requested saves or revisions. For direct `seo-writing` audit
use, redirect to standalone `seo-content-review`, forwarding any requested report
path and leaving no writing parent; the reviewer owns that report save.
A standalone review-and-update request goes through the matching
writing parent rather than expanding an audit into an unowned rewrite.

For revisions, preserve validated facts and identify only material changes. Do not rewrite a usable page merely to make it longer.

## References

Read [reference.md](reference.md) for source distinctions, evidence types, plain-language standards, model pages, and page blueprints. Read [examples.md](examples.md) when an input/output or clarity-rewrite pattern would help.
