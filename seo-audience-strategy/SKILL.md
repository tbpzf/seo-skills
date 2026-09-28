---
name: seo-audience-strategy
description: >-
  Develop audience-first SEO strategies and people-centered content briefs from
  customer situations, decision journeys, existing pages, and search evidence.
  Use directly for audience-situation mapping, owned-site content-gap analysis,
  or a reader brief. Also use in single-content brief mode inside
  seo-landing-page, seo-blog, and seo-guest-post. Route finished copy to those
  writing skills, press releases to seo-pr, and keyword-list expansion to the
  writing parents.
---

# Audience-First SEO Strategy

Start with a real audience's situation and decision. Use queries to learn how
people express that need and to refine the work. A keyword's search volume alone
does not establish that the audience, page, or topic is valuable to the business.

This skill produces either a site/content strategy or a focused reader brief
for one page or guest article. It does not write copy or load `seo-writing`.
When `seo-landing-page`, `seo-blog`, or `seo-guest-post` calls it, return the
brief as a stage output without writing a file or asking the user to invoke
another skill. Owned-site parents own saved artifacts and merges; guest-post
owns the chat deliverable and any requested file. A standalone reader-brief
request uses the same method and may be returned directly. A single-content
brief does not require a site audit.

## Evidence and intake

Use available business goals, product facts, target customers, existing pages,
search data, and direct audience evidence. Useful sources include customer
interviews, sales and support questions, onsite search, reviews, Search Console,
analytics, and the live search results when available. Record where each
important insight came from. Separate observed evidence, a reasoned hypothesis,
and a fact still needing validation. Never invent customer quotes, volumes,
search behavior, product capabilities, or performance results.

If only keywords are supplied, produce a provisional brief or strategy. Infer
plausible situations, label them as hypotheses, and identify the smallest
customer or page evidence needed to check them. Ask for missing context only
when the requested decision cannot responsibly be made without it.

## Research method

1. **Define the decision.** Name the content's business or editorial purpose,
   the audience's task, and the next useful action. A topic needs a credible
   connection to the reader's task and available expertise.
2. **Segment by meaningful differences.** Distinguish people by trigger,
   constraints, desired outcome, objections, and decision criteria. Role or
   demographic labels alone are too thin. Use as many segments as the evidence
   supports; do not create personas to meet a quota.
3. **Describe the situation.** Capture the relevant parts of the seven category
   entry-point prompts: why, when, where, while doing what, with whom, with or
   for what, and how the person feels. Mark unknowns. These are prompts for
   inquiry, not seven facts to fabricate or seven mandatory headings.
4. **Map the journey.** For each meaningful situation, note exploration,
   feature or constraint checks, validation, and transaction or next-action
   questions as applicable. Record what the person already knows, the evidence
   they need, and what they may ask next. The same product can need different
   framing for different situations.
5. **Audit coverage when pages are available.** If the user supplied existing
   pages or asked for a coverage audit, map each distinct need to those pages
   and links. Identify a content gap only when the current page fails to answer
   a material question or support a decision. Improve an existing page when that
   resolves the gap; propose a separate page when the intent, evidence, or
   conversion path is meaningfully different. Avoid near-duplicate pages for
   thin persona labels. If no pages were supplied, label coverage `unknown` and
   continue. A single-page brief does not require a site audit. For a guest
   article, use the [host-reader adaptation](references/guest-post.md) instead
   of owned-site page decisions.
6. **Use search evidence.** Cluster actual or supplied queries by situation and
   stage. Use query wording, SERP patterns, volume, impressions, and click data
   as directional evidence, not as a mandate to write every high-volume topic.
   Search Console is especially useful for checking how published pages are
   found and where impressions do not lead to useful clicks. It may also reveal
   overlooked questions; investigate them against audience evidence.
7. **Choose and measure.** Prioritize by audience relevance, business or
   editorial fit, content gap, credible expertise, and available proof. Select
   measures that match the content's job: qualified engagement, useful next
   actions, assisted conversions, leads, and search visibility where
   appropriate. Do not promise rankings or infer business value from
   impressions alone.

## Deliverables

For a **site or topic strategy**, return a concise audience-situation map with
evidence labels, journey questions, existing coverage, recommended page actions
(keep, improve, create, or defer), supporting query clusters, internal-link
paths, priorities, and validation gaps. Explain why each proposed page deserves
to exist. Do not prescribe a new URL for every persona or keyword.

For a **single-content brief**, include:

- Primary audience and specific scenario; relevant seven prompts with evidence
  source or `hypothesis`/`unknown` labels.
- Trigger, current knowledge, desired outcome, fears or constraints, decision
  criteria, and journey stage.
- The question or decision this page will resolve, its distinct angle, and
  what is outside its scope.
- Existing page coverage and the reason to improve, create, or defer. Use
  `unknown` when no pages were supplied. For a guest article, record host
  audience and editorial fit instead, using the linked host-reader adaptation.
- Content type, proposed section jobs in reader order, needed examples or
  proof, brand-voice notes, and factual boundaries.
- Supplied or observed query cluster, one natural focus phrase if useful, and
  terms to omit or cover elsewhere. Do not invent keyword quotas.
- Useful internal links for owned pages, the next action or CTA when relevant,
  success measures, and unresolved evidence with its likely owner (for example
  sales, support, or the contributor).

Keep the brief proportionate to the assignment. A narrow page may need only one
well-supported situation. The brief is complete when the reader's task and
next question, evidence-labeled situation, decision criteria, needed proof,
scope, and validation gaps are explicit. When handing it to a writing workflow,
preserve supplied facts and evidence labels. `seo-writing` defines the owned-site
content-plan schema; `seo-landing-page` and `seo-blog` own the saved
`content-plan.md` and merges. `seo-guest-post` owns publisher fit, links,
disclosures, pitch structure, copy, and submission notes in chat, and saves a
file only when requested.

## Validation

Include a comparison method only when the user asks how to test this approach.
Then compare a conventional keyword-led brief with a brief built from the same
audience situation. Review whether the drafts answer actual questions,
differentiate the page, and provide needed proof. After publication, compare
appropriate engagement and business outcomes alongside search data. Treat the
comparison as a test, not proof that one approach always wins. Account for page
age, distribution, intent, and other differences before attributing results to
the brief.

## Source ideas

- Craig Addyman, [The Anti-Keyword Strategy](https://www.linkedin.com/pulse/anti-keyword-strategy-craig-addyman-xmzce/): audience distinctions, journey-based page architecture, and query data for refinement.
- Amanda King, [Build content briefs around people, not keywords](https://martech.org/build-content-briefs-around-people-not-keywords/): situation-based briefs, seven category entry-point prompts, and feedback from customer-facing teams.

The articles motivate this workflow. Do not fetch them during a run. Their
claims about AI search visibility are strategic hypotheses, not guaranteed
outcomes.
