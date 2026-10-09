---
name: seo-landing-prompt
description: >-
  Generate reusable English SEO prompts for SaaS landing pages from keywords
  and a product brief. Use when the user wants a prompt for a feature, use-case,
  industry, audience, or product landing page with an intent-led content plan,
  keyword policy, metadata, conversion constraints, and final verification.
  Adapt keyword use to sparse, typical, or large sets. Inside seo-landing-page,
  export a reusable prompt only when the user requests one; its saved content
  plan remains the drafting contract. Do not use for blogs, finished copy, or
  copy audits.
---

# SEO Landing Prompt

Turn a keyword and optional business context into a complete, reusable prompt for generating English SEO content. The output of this skill is a prompt, not the finished SEO page.

The generated prompt uses the structure of a content-production brief: fact boundaries, keyword plan, modular deliverables, and final verification. It must not imply that keyword counts, a particular structure, or AI-generated copy guarantees rankings.

Carry the [`distinctive-content`](../distinctive-content/SKILL.md) contract into
every exported prompt: use supplied experience, decisions, examples, data,
and proof; ask one source question at a time, up to 10, when a material gap
remains; and label the prompt provisional when the source gap is accepted.

Do not load `seo-audience-strategy` while building the prompt. A keyword is a
clue to a reader's task, not sufficient evidence of the reader's circumstances.
When the user supplies no audience evidence, the generated prompt must label the
likely situation as a hypothesis. When no existing pages were supplied, the
prompt must tell the writer to mark coverage as `unknown` and continue.

When [seo-landing-page](../seo-landing-page/SKILL.md) explicitly requests a
reusable prompt, build it from the normalized `content-plan.md` and return it
to the parent. The parent may save `prompt.md` as an export; the plan, not the
exported prompt, controls drafting. Carry the plan's `Keyword map` into the
prompt: preserve the supplied primary and supporting or long-tail list
verbatim, the chosen focus keyword, and each distinct term's use or omit
decision, reader intent and section role or omission reason, planned placement,
and user-set count. Do not run fresh keyword selection for an export. Return a
concise status and unresolved variables to the parent. Do not claim a file was
saved, because the parent owns every write. A standalone prompt-only request
can use the keyword-only or brief mode below without an existing plan.

## Input modes

### Keyword-only mode

When the user supplies only a keyword:

1. Generate a review-ready prompt template immediately.
2. Use the keyword as the primary keyword.
3. Default to an English SaaS landing page for a US audience only if the user gives no page type or market.
4. Keep product facts, CTA, audience, evidence, and restrictions as clearly marked variables such as `[[PRODUCT_FACTS]]`.
5. Default keyword policy to natural mode (no numeric targets).
6. Set `[[INSTRUCTION_LANGUAGE]]` to the user's language for the request, and `[[PAGE_COPY_LANGUAGE]]` to the requested page language (default US English).
7. Add a short “fill before use” list after the prompt. Do not call a prompt
   copy-paste-ready while required variables remain unresolved, and do not ask
   questions before producing the initial template.

### Brief mode

When the user supplies a keyword plus context, use the supplied facts to fill
the variables. In a standalone prompt request, request only material missing
facts if the user asks for an executable prompt with no placeholders. Inside
`seo-landing-page`, use the saved plan as input, retain its explicit unknowns
as placeholders, and return the prompt without a confirmation turn. A missing
core product fact may block the parent's drafting stage even though a prompt
template can be exported.

Collect when available:

- Core keyword candidates, long-tail keywords, and terms that must or must not appear
- Page type: SaaS feature, use case, industry, audience, or product landing page
- Market, page-copy language, instruction/report language, audience, reader task, and brand voice
- Customer situations or questions from sales/support, journey stage, existing page coverage, and known objections when available
- Product capabilities, limits, pricing/free-trial policy, compliance or legal restrictions
- Approved proof: citations, customer stories, statistics, screenshots, and internal links
- Distinctive source material: first-hand workflow, decisions, examples, results, limits, and attribution owner
- Primary CTA, optional same-path secondary CTA destinations, required modules, and word-count constraints
- Keyword frequency policy: natural use (default), or explicit per-keyword targets

## Keyword portfolio contract

```yaml
selection_mode: adaptive
typical_core_keyword_count: 3
typical_long_tail_keyword_range: 10-12
fill_missing_keywords: false
require_every_keyword: false
```

Treat the typical counts as a common brief shape, not required counts or hard
caps. A smaller set must produce a narrower keyword plan. A larger or
mixed-intent set must be clustered, with only the cluster relevant to the page
used in visible copy.

## Non-negotiable prompt requirements

Every generated prompt must:

1. State that the model may use only supplied or cited product facts.
2. Forbid fabricated product capabilities, integrations, customers, testimonials, metrics, sources, pricing, or certifications.
3. Preserve the difference between concepts, previews, and professional/regulated deliverables when relevant.
4. Require one clear search intent and one primary CTA; secondary CTAs may only support the same next step.
5. Require natural language, not keyword stuffing; semantic variants do not count as exact-match occurrences.
6. Require a `<content_plan>` before page copy. It must contain the reader-intent
   analysis, the audience situation and its evidence status, one useful topic
   promise, a section-level structure, and the keyword plan. Require a final
   SEO report after the copy.
7. Use count-mode reporting only when the user supplied numeric targets; otherwise use natural-mode placement notes with no invented targets or per-module count tables.
8. Exclude planning and reporting text from any exact keyword counts.
9. Require the writer to flag an impossible or unnatural keyword rather than force it into user-facing copy.
10. Include product-accuracy, conversion, and anti-stuffing/clarity checks. Do not require a full [Humalizer](../humalizer/SKILL.md) pass inside the generated prompt when a later humanization stage will run; a light clarity check is enough.
11. Preserve the user's keyword inventory without filling it to three core
    keywords or ten to twelve long-tail keywords, unless the user explicitly
    asks for keyword research or expansion. Keep new suggestions optional until
    selected.
12. Select one focus keyword, classify other core keywords as supporting, and
    allow irrelevant, redundant, or overly dense terms to be omitted with a
    reason in the final report.
13. Require a clear, immediately understandable title tag and H1. Require the
    focus keyword naturally in both, and require the H1 to pair it with a
    specific, supportable user benefit or outcome.
14. Require the writer to treat the audience as capable adults: use plain
    language without childish explanations, obvious filler, fake beginner
    scenarios, or patronizing phrases. Define terms according to the audience's
    recorded knowledge, not a blanket beginner assumption.
15. Require every planned section to answer a distinct reader question, enable
    a decision, teach an action, provide evidence, or explain a material limit.
    Forbid sections created only for length, keywords, or a generic template.
16. Require a distinctive source gate before drafting. If the supplied material
    lacks a defensible contribution, ask one focused question per turn (maximum
    10), preserve the answers with their sources and limits, and record any
    accepted provisional gap in the final report.

## Building the prompt

### 1. Classify the page

Choose the landing-page subtype that matches intent:

| Page type | Intent | Default modules |
| --- | --- | --- |
| Feature, use case, industry, product landing page | Commercial or transactional | Hero, problem, how it works, outcomes, proof, FAQ |

If the supplied keyword does not clearly match the product or page type, write a validation warning into the prompt instead of forcing topical relevance.

### 2. Configure keyword policy

- For a standalone prompt, normalize the supplied inventory before choosing
  a mode: identify exact duplicates and phrases contained inside longer
  phrases, select one focus keyword, and classify the rest as supporting core,
  long-tail, or restricted terms. Preserve every supplied phrase in the prompt
  or its report, including duplicates and omitted terms, with its disposition.
  For a parent export, use the saved `Keyword map` classifications and
  placements without recomputing them.
- Set `[[SUPPLIED_PRIMARY_KEYWORD]]` to the user's original primary term, or
  `None supplied` for a topic-only request. Set `[[PRIMARY_KEYWORD]]` to the
  plan's chosen focus term. On a parent export, preserve any mismatch and its
  blocker instead of silently replacing the supplied term.
- Scale the plan to the actual inventory:
  - **Sparse example: one core keyword and zero to three long-tail terms.** Keep
    the page tightly focused. Do not manufacture related exact-match phrases or
    repeat the small set across every module. Still cover the reader's topic
    completely with natural language; fewer keywords do not require thinner
    content.
  - **Typical example: up to three core keywords and up to twelve long-tail
    terms.** Give each relevant term a distinct intent or section role. Do not
    put every core term in the title/H1 or force every long-tail phrase into
    visible copy.
  - **Large or mixed-intent set.** Cluster by search intent. Use only the
    coherent cluster for this page and mark the rest as restricted or suggest
    separate pages.
- Treat these ranges as planning guidance, never as quotas or density targets.
- Populate `[[SECONDARY_KEYWORD_TABLE]]` with keyword, role (supporting core or
  long-tail), intended reader intent/section, and use policy. In natural mode,
  do not add a numeric target column. In a parent export, populate it from the
  selected rows and term types of the saved map.
- Fill `[[SUPPORTING_PRIMARY_KEYWORDS]]` and `[[LONG_TAIL_KEYWORDS]]` with only
  the supplied terms selected for this page. Write `None supplied` for an empty
  group instead of inventing replacements. In a parent export, place each
  omitted supplied term and its saved reason in `[[RESTRICTED_KEYWORD_POLICY]]`
  so the complete input remains traceable.
- When a user specifies targets, use **count mode**: preserve each exact target
  range and count scope from the plan in the prompt and report, explain overlap
  counting, and require an honest Actual/Target result. Do not promise that
  every target will be met.
- When no targets are supplied, use **natural mode**: intent-led placement only. Do not invent numeric targets, planned exact-match totals, or per-module keyword count tables.
- Define a `restricted keyword` area for awkward or weakly relevant terms. Allow zero uses and require an explanation in the report if omission improves clarity.
- In count mode only, apply the plan's count scope or the skeleton default;
  exclude `<content_plan>` and the final report.
- If the writer cannot verify a count reliably, it must say so rather than invent a total. If a supplied target would cause stuffing, report it as unmet instead of degrading the copy.

### 3. Configure factual boundaries

Put supplied facts in a `Product Facts and Boundaries` section. Translate them into constraints such as:

- What the tool does and does not do
- Which inputs, workflows, outputs, modes, or integrations exist
- Which claims require a citation or approved proof
- Which outcomes, pricing claims, safety claims, professional claims, or guarantees are prohibited

Do not transform a missing fact into a claim. Use `[fact needed]` in the generated prompt when necessary.

### 4. Select modules

Use the six-module landing-page skeleton in [prompt-skeleton.md](prompt-skeleton.md). Adapt labels to the product, but keep the architecture aligned with `seo-writing`: hero, problem, how it works, outcomes, proof, FAQ. Keep one primary CTA; do not attach a CTA to every card or step.

Treat modules as a planning aid, not a mandatory table of contents. The
generated prompt must tell the writer to omit or reorder modules that do not
serve the resolved reader task.

### 5. Deliver

For a standalone request, return:

```markdown
## Generated SEO content prompt
[A complete prompt template in [[INSTRUCTION_LANGUAGE]]]

## Fill before use
- [Only unresolved variables or facts]

## Prompt configuration
- Page type:
- Primary keyword:
- Keyword policy: natural | count
- Instruction language:
- Page copy language:
- Audience and market:
- Primary CTA:
```

Do not add strategy commentary inside the copy-paste prompt unless the user asks for it.
Inside `seo-landing-page`, provide the same data to the parent without
turning it into a user-facing approval checkpoint or an alternate drafting
contract.

## Quality check

Before delivering the generated prompt, verify:

- The primary keyword is present in the role/goal and keyword policy.
- The prompt requires a clear title tag containing the focus keyword and a clear
  H1 containing the focus keyword plus a specific, supportable user benefit or
  outcome.
- Every product statement comes from the user or remains a variable.
- Page type, audience, market, intent, modules, and CTA are explicit.
- The reader situation is supported by supplied evidence or labeled as a
  hypothesis. When existing pages were supplied, the plan checks that coverage
  before proposing a separate page. Otherwise it marks coverage `unknown` and
  continues.
- The prompt separates content planning from drafting and requires a usable
  topic/structure artifact before body copy.
- Keyword policy is natural mode unless the user supplied targets; count instructions explain scope and overlap only in count mode.
- The keyword plan scales to the supplied inventory, names one focus keyword,
  does not fill missing keyword slots, and does not require every phrase to
  appear by default.
- For a parent export, every supplied phrase and its use or omit decision,
  term type, section role or omission reason, and user-set count match
  `content-plan.md`.
- The original user-supplied primary and chosen focus occupy distinct fields.
- Reports and planning notes use `[[INSTRUCTION_LANGUAGE]]`, not a hardcoded language.
- Metadata guidance does not require Meta Keywords.
- Product-accuracy, conversion, and anti-stuffing/clarity checks exist.
- Reader knowledge, usefulness, and reader-respect checks exist; plain language
  is not treated as permission to talk down to the audience.
- The prompt carries the distinctive-content gate, one-at-a-time interview limit,
  source owner, evidence limits, and mapped section use.
- The prompt has no domain-specific residue from an unrelated template (including forced Chinese report text or per-item CTA spam).
- Every unresolved `[[VARIABLE]]` is listed under “Fill before use.” Call the
  prompt copy-paste-ready only when that list is empty.

## References

Read [prompt-skeleton.md](prompt-skeleton.md) for the reusable copy-paste skeleton and [examples.md](examples.md) for keyword-only and brief-mode examples.
