---
name: seo-writing
description: >-
  Plan, write, and improve English SaaS landing pages and educational blog posts
  for organic search and conversion in clear language for capable adult readers.
  Use when turning keywords into a useful topic and content structure, turning
  a supplied structure into complete content, creating product-led articles,
  writing SEO metadata, or auditing SaaS copy for reader intent, usefulness,
  evidence, clarity, and CTA alignment. In the root seo-content-workflow, save
  the plan and draft in their per-keyword paths without an approval step.
---

# SaaS SEO Writing

Create helpful, evidence-led English content for a real SaaS audience. Optimize for discovery and decision-making, never for keyword density or a guessed ranking formula.

**Clarity bar:** keep general prose near a grade 6–8 reading level so readers can grasp it on the first pass. Write for a capable adult. Simplify the *language*, not the reader, subject, or job. If a busy expert cannot skim it, rewrite; if the prose explains obvious ideas or talks down to the reader, remove it.

When this skill runs inside [seo-content-workflow](../seo-content-workflow/SKILL.md), use `plan` mode to save `seo-content/<keyword-slug>/content-plan.md`, then use `draft-from-structure` mode with that plan and `prompt.md` when it exists to write `content.md`. Skip the standalone Humalizer pass because the root workflow owns finalization.

Inside the root workflow, the parent-selected operating mode overrides any
workflow or output instruction inside a reusable prompt. Use the normalized
saved prompt for facts, SEO policy, audience, market, language, and CTA when it
exists. Always use the saved content plan for the reader promise, intent,
outline, required depth, and its normalized fallback constraints. Do not
silently replace either contract from invocation context. If a required value
is absent, return control to the parent stage that owns it, persist the
correction, and continue without user approval. Omit unsupported factual claims
and list unresolved evidence or destinations in the final audit.

This skill covers:
- SaaS landing pages: feature, use case, audience, or industry pages
- SaaS educational blog posts: definitions, how-to guides, and problem-solving articles

It does not cover local SEO, ecommerce, programmatic SEO, YMYL topics, or competitor-comparison pages. State the limitation and ask to narrow or use a dedicated workflow when one of those is requested.

## Operating modes

Choose one mode from the request:

| Mode | Input | Output |
| --- | --- | --- |
| `plan` | Keyword(s), audience/product context, and available evidence | One specific topic, reader-intent analysis, and a section-level content structure; no body copy |
| `draft-from-structure` | A supplied or saved content structure plus factual/SEO constraints | Complete content that follows and, when necessary, safely corrects the structure |
| `end-to-end` | Keyword(s) plus a request for finished content | Run `plan`, then draft from that plan |
| `audit` | Existing copy | Findings and targeted revisions |

Do not merge `plan` and `draft-from-structure` into one invisible step inside
the root workflow. The saved plan is the handoff contract and recovery point.

## Non-negotiable rules

1. Write for a person with a real task, not for a search engine.
2. Do not invent product behavior, integrations, customer names, testimonials, statistics, awards, case-study results, expert quotes, or sources.
3. Separate supplied facts from proposed copy. Mark placeholders such as `[customer result needed]` rather than fabricating proof.
4. Use one primary search intent and one primary CTA per page. Secondary CTAs may only support the same next step.
5. Use the primary keyword naturally where it clarifies the page. Never force a density target or repeat it in every heading.
6. A product mention must solve the reader's current problem. Do not turn an informational article into an uninterrupted sales pitch.
7. Do not claim that a change will rank, convert, or meet a Google requirement. Explain the user benefit and evidence instead.
8. Scale keyword use to the supplied inventory and page length. Never add
   keywords to fill the typical portfolio shape defined by the saved prompt or
   plan, and never require every supplied phrase to appear.
9. Meet the clarity bar on every draft. Prefer short sentences, everyday words,
   one idea per paragraph, and concrete examples. Define a technical term on
   first use only when the intended reader may not know it. Do not “sound
   smart”; sound clear.
10. Make the title tag and H1 clear on the first read. Include the focus keyword
    naturally in both. Make the H1 state a specific, supportable user benefit or
    outcome in addition to the focus keyword; do not use a vague slogan as the
    H1.
11. Infer and serve the reader's real task or decision, not just the literal
    keyword. A page that restates definitions or offers interchangeable tips is
    not useful enough to publish.
12. Respect the reader's competence. Do not use a childish tone, fake beginner
    scenarios, patronizing reassurance, or phrases such as “simply,”
    “obviously,” or “even a beginner” to diminish the work. Explain a term only
    when the intended audience is unlikely to know it.
13. Earn every section. Each section must answer a distinct question, enable a
    decision, teach an action, supply evidence, or clarify a meaningful limit.
    Delete sections that exist only for word count, keyword placement, or a
    generic template.

## Intake

Identify or request only the missing information needed to produce accurate copy:

| Required input | Why it matters |
| --- | --- |
| Page type and target keyword/topic | Determines intent and page architecture |
| ICP: audience, role, maturity, and pain | Determines language and proof |
| Product facts: capabilities, limits, differentiators | Prevents invented claims |
| Primary CTA and post-click action | Keeps the conversion path coherent |
| Brand voice and approved claims | Keeps copy on-brand and supportable |

Also request, when available:
- The existing draft or URL and its target metric
- Customer evidence, screenshots, demos, documentation, or source URLs
- Relevant internal pages and preferred anchor text
- Geographic market, competitors, and SERP notes

For a standalone request, ask for facts before drafting when accurate copy is
otherwise impossible. Inside `seo-content-workflow`, follow its automatic
fallback rules and continue with explicit evidence placeholders or safe
omissions.

## Workflow

### 1. Research

1. Classify the query: informational, commercial investigation, or transactional.
2. Resolve the likely reader situation: who searches, what triggered the
   search, what they already know, and the task or decision they need to finish.
3. Define the expected result: a direct answer, comparison criteria, procedure,
   template, diagnosis, recommendation, or buying decision support.
4. List the constraints, failure modes, trade-offs, and follow-up questions a
   useful answer must cover. Separate adjacent intents that need another page.
5. When live search or SERP data is available, inspect the dominant result type,
   recurring reader questions, and gaps. Treat it as evidence about expectations,
   not a template to copy.
6. Read supplied product materials and list only substantiated capabilities,
   limitations, and proof.
7. Identify the information gain: first-hand experience, original data, a useful
   framework, a concrete workflow, an expert explanation, a downloadable
   artifact, or product evidence that competing pages do not provide.
8. Map the reader's next decision. Do not target a query if the product has no
   credible relevance to its solution.

### 2. Topic and content structure

In `plan` or `end-to-end` mode, select one topic that makes a specific,
supportable promise. Do not use the keyword itself as the entire topic and do
not broaden the topic beyond the reader's likely task.

Return this plan:

```markdown
# Content plan

## Reader intent
- Focus keyword:
- Search intent:
- Reader and current knowledge:
- Trigger, job, or decision:
- Expected outcome:
- Constraints and follow-up questions:
- Out of scope:

## Topic
- Working title:
- Reader promise:
- Why this angle is useful:
- Information gain and evidence available:

## Content structure
### <descriptive section heading>
- Reader question/job:
- Key takeaway:
- Evidence, example, or artifact:
- Product connection, if genuinely useful:

## Writing constraints
- Page type, market, and page-copy language:
- Selected/omitted supporting keywords:
- Keyword policy:
- Verified product facts and prohibited claims:
- Facts or evidence still needed:
- Internal links:
- Primary CTA and destination:
```

Every saved plan must populate these constraints. When `prompt.md` does not
exist, this section is the complete persisted drafting contract rather than a
short note appended to the outline.

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

Use for commercial or transactional queries. Make one audience/use-case promise and support it with proof. Keep this architecture aligned with `seo-prompt-skill` landing prompts.

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
  core or long-tail term a distinct reader intent or section role.
- With a sparse keyword set, reduce keyword-bearing headings and placements;
  do not repeat the same terms across every module.
- With a large or mixed-intent set, write only for the coherent cluster in the
  specification. Do not merge separate search intents into one page.
- Give each paragraph one job and lead important sections with a direct answer or claim.
- Deliver the information promised in each section. Include the planned
  decision criteria, steps, examples, evidence, limits, or artifact rather than
  replacing them with motivational prose.
- Assume the knowledge level recorded in the plan. Do not define familiar terms,
  narrate obvious steps, or add empty setup such as “In today's fast-paced
  world.”
- Make headings descriptive enough to be scanned without body text.
- Prefer concrete verbs, product behaviors, and observable outcomes over adjectives such as “powerful,” “seamless,” or “best-in-class.”
- Write to the clarity bar below. Retain domain terms the ICP expects; define only terms the intended reader may not know.
- Link only to pages that genuinely help the reader continue: product, pricing, demo, documentation, case study, or a related guide.
- Include title tag, meta description, H1, URL suggestion, body copy, CTA labels, and internal-link recommendations unless the user asks for only one component.

## Clarity bar (middle-school readable)

Goal: keep general prose near a grade 6–8 reading level. The reader is still a SaaS buyer or practitioner. Let the ICP determine which product and domain terms need an explanation; do not talk down, invent school metaphors, or strip needed terminology.

| Rule | Do | Avoid |
| --- | --- | --- |
| Sentence length | Aim for ~15–20 words on average; review sentences over ~25 and split them when that improves clarity | Nested clauses, three ideas in one sentence |
| Words | Short everyday verbs: use, help, show, fix, start | utilize, leverage, facilitate, empower, streamline |
| Paragraphs | 1 idea; usually 2–4 short sentences | Walls of text; restating the same claim |
| Structure | Answer first (inverted pyramid); scannable H2/H3; lists for steps | Clever headings that hide the point; long intros |
| Terms | Keep familiar domain terms; define unfamiliar terms once in plain English | Jargon stacks; acronyms the intended reader may not know |
| Concrete | Name the actor, action, and result | “Our solution enables seamless optimization…” |
| Tone | Teach like a clear textbook or a good explainer blog | Marketese, hype, and fake “thought leadership” |

**Self-check before audit:** read the opening and one mid-page section out loud. If you must re-parse a sentence, rewrite it. Prefer “what it does → how → what happens next” over abstract claims.

Also run a reader-respect check: if a capable reader would say “I already know
this,” “get to the point,” or “what should I do with this?”, cut the setup or
replace it with a concrete answer, decision rule, example, or next action.

For word swaps, model pages, and textbook-style patterns, see the “Plain language and middle-school clarity” section in [reference.md](reference.md). For before/after rewrites, see Example 3 in [examples.md](examples.md).

## Metadata and on-page guidance

- Make the title tag immediately understandable and include the focus keyword
  naturally. State the page topic, not a clever or teaser-style slogan.
- Make the H1 immediately understandable and include both the focus keyword and
  a specific, supportable user benefit or outcome. The benefit must tell the
  reader what they can achieve, improve, avoid, or understand; avoid generic
  claims such as “work smarter” or “unlock more.”
- Keep the title tag and H1 aligned to the same page promise, but do not require
  identical wording. If the supplied focus keyword cannot fit either element
  clearly and naturally, flag the keyword or intent mismatch instead of hiding
  the keyword or writing awkward copy.
- Make the meta description precise, useful, and non-sensational. Avoid unverified superlatives and dates unless they matter and can be maintained.
- Use a short, readable URL slug that describes the page.
- Use one H1 and a logical H2/H3 hierarchy.
- Add image alt-text suggestions only for meaningful images; describe the image, not a list of keywords.
- Suggest structured data only when it accurately represents visible page content. Do not add FAQ markup solely to chase a search feature.

## Audit loop

After the first draft, run both reviews and silently revise.

### A. Intent, evidence, and conversion audit

- Would the target reader find the answer or buying information promised by the query?
- Does the opening answer or orient the reader without delaying the useful part?
- Does every major section fulfill its recorded reader question/job with a
  concrete takeaway?
- Can the reader make a better decision or take a real next step after reading?
- Does the article avoid teaching obvious basics to an audience that already
  knows them, while still defining genuinely unfamiliar terms?
- Does the page offer a distinct insight, workflow, evidence source, or product demonstration?
- Is every factual claim supplied, cited, or marked as needing validation?
- Is the product connection natural, proportionate, and useful?
- Does each CTA lead to the stated next action?
- Are internal links specific and useful rather than decorative?

### B. Clarity and search-readiness audit

- Run the clarity bar: average sentence length, one idea per paragraph, everyday words, unfamiliar jargon defined once, answer-first openings.
- Check general prose against the grade 6–8 target while preserving terms familiar to the ICP. If a sentence makes the intended reader re-read, shorten it or make it more concrete.
- Remove keyword repetition, generic introductions, filler, and vague claims.
- Remove exact phrases that compete for the same sentence, paragraph, or
  heading without adding distinct meaning.
- Confirm that a sparse keyword inventory was not expanded and that omitted
  supporting terms were recorded rather than forced into the draft.
- Replace unsupported “leading,” “trusted,” “faster,” or “better” claims with evidence or precise language.
- Remove AI-style list inflation, fake urgency, empty transitions, and repetitive CTA wording.
- Remove patronizing language, fake beginner examples, redundant definitions,
  rhetorical padding, and “simple” advice that omits the hard or useful part.
- Confirm the title is clear and contains the focus keyword.
- Confirm the H1 is clear and contains the focus keyword plus a specific,
  supportable user benefit or outcome.
- Check that headings, title, H1, meta description, and opening match one clear promise.
- Check that the draft does not imitate or copy a competitor's wording or structure beyond common page conventions.

### C. Humanization pass

Apply the full [Humalizer](../humalizer/SKILL.md) review only when this skill is the final writing stage (standalone request, or no parent workflow will run a later humanization step).

Skip the full Humalizer pass inside this skill when `seo-content-workflow` is
the parent. That workflow runs `humalizer` with `blader-humanizer` as Stage 8,
then `stop-slop` as Stage 9 and Harper grammar checking as Stage 10 when
available. Keep audit A/B here: remove obvious filler and repetitive CTAs, but
do not run a second scored rewrite.

When Humalizer does run here, preserve the SEO contract: verified claims, intent, required keywords, metadata, citations, links, and primary CTA. Do not invent personality, customer proof, or first-hand experience to make the page feel less AI-generated.

## Deliverable

In `plan` mode, return only the content-plan format from Step 2. In `end-to-end`
mode, return that content plan first, then the draft deliverable below; when the
root workflow owns file writes, return them as separate artifacts. In
`draft-from-structure` mode, read the supplied plan and return only:

```markdown
## Content strategy
[Compact research and positioning brief]

## SEO metadata
- Title tag:
- Meta description:
- URL slug:
- H1:

## Draft
[Publishable page copy]

## Internal links and evidence to add
- [anchor text] → [destination or placeholder]
- [missing evidence / owner]

## Final audit
- Intent and product fit:
- Usefulness and reader-respect check:
- Structure deviations, if any:
- Evidence gaps:
- Clarity bar (middle-school readable): pass / fixes made:
- Changes made:
```

For revisions, preserve validated facts and identify only material changes. Do not rewrite a usable page merely to make it longer.

## References

Read [reference.md](reference.md) for source distinctions, evidence types, plain-language standards, model pages, and page blueprints. Read [examples.md](examples.md) when an input/output or clarity-rewrite pattern would help.
