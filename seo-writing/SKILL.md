---
name: seo-writing
description: >-
  Write and improve English SaaS landing pages and educational blog posts for
  organic search and conversion. Use when creating SEO content, SaaS
  feature/use-case/industry pages, product-led blog articles, SEO titles or
  meta descriptions, or when auditing finished SaaS copy and producing a final
  SEO verification report for search intent, evidence, and CTA alignment. In
  the root seo-content-workflow, write automatically from the saved prompt and
  save markdown in its per-keyword content.md path without an approval step.
---

# SaaS SEO Writing

Create helpful, evidence-led English content for a real SaaS audience. Optimize for discovery and decision-making, never for keyword density or a guessed ranking formula.

When this skill runs inside [seo-content-workflow](../seo-content-workflow/SKILL.md) after its automatic readiness pass, treat the saved `seo-content/<keyword-slug>/prompt.md` as the content specification, skip the standalone Humalizer pass, and write the final markdown to `seo-content/<keyword-slug>/content.md`.

Inside the root workflow, use the normalized saved prompt as the only content
specification. Do not infer new page type, audience, market, language, keyword
policy, or CTA values from invocation context. If a required structural value
is absent, return control to the parent's Stage 3 so it can resolve and persist
the value, then continue without user approval. Omit unsupported factual claims
and list unresolved evidence or destinations in the final audit. Label the
draft as requiring input before publication when material placeholders remain.

This skill covers:
- SaaS landing pages: feature, use case, audience, or industry pages
- SaaS educational blog posts: definitions, how-to guides, and problem-solving articles

It does not cover local SEO, ecommerce, programmatic SEO, YMYL topics, or competitor-comparison pages. State the limitation and ask to narrow or use a dedicated workflow when one of those is requested.

## Non-negotiable rules

1. Write for a person with a real task, not for a search engine.
2. Do not invent product behavior, integrations, customer names, testimonials, statistics, awards, case-study results, expert quotes, or sources.
3. Separate supplied facts from proposed copy. Mark placeholders such as `[customer result needed]` rather than fabricating proof.
4. Use one primary search intent and one primary CTA per page. Secondary CTAs may only support the same next step.
5. Use the primary keyword naturally where it clarifies the page. Never force a density target or repeat it in every heading.
6. A product mention must solve the reader's current problem. Do not turn an informational article into an uninterrupted sales pitch.
7. Do not claim that a change will rank, convert, or meet a Google requirement. Explain the user benefit and evidence instead.
8. Scale keyword use to the supplied inventory and page length. Never add
   keywords to fill the typical portfolio shape defined by the saved prompt,
   and never require every supplied phrase to appear.

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
2. When live search or SERP data is available, inspect the dominant result type, recurring reader questions, and gaps. Treat it as input, not a template to copy.
3. Read the supplied product materials and list only substantiated capabilities, limitations, and proof.
4. Identify the information gain: first-hand experience, original data, a useful framework, a concrete workflow, an expert explanation, or product evidence that competing pages do not provide.
5. Map the reader's next decision. Do not target a query if the product has no credible relevance to its solution.

### 2. Strategy

Write a compact strategy before the draft:

```markdown
Intent:
Reader and job to be done:
Primary keyword/topic:
Supporting core keywords:
Long-tail keywords selected / omitted:
Search promise:
Information gain:
Product relevance:
Primary CTA and destination:
Evidence available / evidence still needed:
Internal links:
```

Choose one architecture.

#### Educational blog

Use for information-led queries. Answer the question in the opening, then teach the reader how to act.

1. SEO title and H1 with the same core promise
2. Direct answer or problem framing
3. Method, framework, or steps
4. Examples, screenshots, data, or expert evidence
5. Limits, alternatives, or common mistakes where useful
6. Natural product connection for a relevant step
7. Conclusion with the next useful action and CTA

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

### 3. Draft

- Use one focus keyword for the page promise. Give each selected supporting
  core or long-tail term a distinct reader intent or section role.
- With a sparse keyword set, reduce keyword-bearing headings and placements;
  do not repeat the same terms across every module.
- With a large or mixed-intent set, write only for the coherent cluster in the
  specification. Do not merge separate search intents into one page.
- Give each paragraph one job and lead important sections with a direct answer or claim.
- Make headings descriptive enough to be scanned without body text.
- Prefer concrete verbs, product behaviors, and observable outcomes over adjectives such as “powerful,” “seamless,” or “best-in-class.”
- Explain terms the intended reader may not know. Retain domain language when the ICP expects it.
- Link only to pages that genuinely help the reader continue: product, pricing, demo, documentation, case study, or a related guide.
- Include title tag, meta description, H1, URL suggestion, body copy, CTA labels, and internal-link recommendations unless the user asks for only one component.

## Metadata and on-page guidance

- The title tag and H1 should reinforce the same topic but do not need identical wording.
- Make the title and meta description precise, useful, and non-sensational. Avoid unverified superlatives and dates unless they matter and can be maintained.
- Use a short, readable URL slug that describes the page.
- Use one H1 and a logical H2/H3 hierarchy.
- Add image alt-text suggestions only for meaningful images; describe the image, not a list of keywords.
- Suggest structured data only when it accurately represents visible page content. Do not add FAQ markup solely to chase a search feature.

## Audit loop

After the first draft, run both reviews and silently revise.

### A. Intent, evidence, and conversion audit

- Would the target reader find the answer or buying information promised by the query?
- Does the page offer a distinct insight, workflow, evidence source, or product demonstration?
- Is every factual claim supplied, cited, or marked as needing validation?
- Is the product connection natural, proportionate, and useful?
- Does each CTA lead to the stated next action?
- Are internal links specific and useful rather than decorative?

### B. Clarity and search-readiness audit

- Remove keyword repetition, generic introductions, filler, and vague claims.
- Remove exact phrases that compete for the same sentence, paragraph, or
  heading without adding distinct meaning.
- Confirm that a sparse keyword inventory was not expanded and that omitted
  supporting terms were recorded rather than forced into the draft.
- Replace unsupported “leading,” “trusted,” “faster,” or “better” claims with evidence or precise language.
- Remove AI-style list inflation, fake urgency, empty transitions, and repetitive CTA wording.
- Check that headings, title, meta description, and opening match one clear promise.
- Check that the draft does not imitate or copy a competitor's wording or structure beyond common page conventions.

### C. Humanization pass

Apply the full [Humalizer](../humalizer/SKILL.md) review only when this skill is the final writing stage (standalone request, or no parent workflow will run a later humanization step).

Skip the full Humalizer pass inside this skill when `seo-content-workflow` is
the parent. That workflow runs `humalizer` once as its required Stage 6. Keep
audit A/B here: remove obvious filler and repetitive CTAs, but do not run a
second scored rewrite.

When Humalizer does run here, preserve the SEO contract: verified claims, intent, required keywords, metadata, citations, links, and primary CTA. Do not invent personality, customer proof, or first-hand experience to make the page feel less AI-generated.

## Deliverable

Unless the user asks for a narrower output, return:

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
- Evidence gaps:
- Changes made:
```

For revisions, preserve validated facts and identify only material changes. Do not rewrite a usable page merely to make it longer.

## References

Read [reference.md](reference.md) for source distinctions, evidence types, and detailed page blueprints. Read [examples.md](examples.md) when an input/output pattern would help.
