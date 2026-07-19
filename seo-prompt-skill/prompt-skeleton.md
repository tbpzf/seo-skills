# Reusable SEO content prompt skeleton

Replace every `[[VARIABLE]]` before use. Remove any bracketed field that is not applicable. The instruction language can be Chinese while the requested page copy is English.

```markdown
# [[PAGE_NAME]] SEO Content Prompt

## Role and goal

You are a senior English SEO content strategist and SaaS conversion copywriter.
Create a complete, credible [[PAGE_TYPE]] for [[PRODUCT_NAME]] about
**[[PRIMARY_KEYWORD]]**.

Write for [[MARKET_AND_LANGUAGE]] readers. The page must serve this search intent:
[[SEARCH_INTENT]]. Help this audience: [[AUDIENCE_AND_JOB_TO_BE_DONE]].

Optimize for relevance, clarity, reader usefulness, and the primary conversion
action. Do not claim that this page will rank or convert. Do not write unnatural
sentences to meet a keyword count.

## Product facts and boundaries

Use only the facts below. If a needed fact is missing, use `[fact needed]` or
omit the claim. Do not invent capabilities, integrations, customer names,
testimonials, metrics, sources, pricing, certifications, or legal/compliance
claims.

[[PRODUCT_FACTS]]

### Claims and boundaries

- The product does: [[SUPPORTED_WORKFLOWS_AND_OUTPUTS]]
- The product does not do or guarantee: [[LIMITATIONS_AND_PROHIBITED_CLAIMS]]
- Pricing or free-use language must follow: [[PRICING_POLICY]]
- Required citations or approved proof: [[EVIDENCE_AND_SOURCES]]
- Required internal links: [[INTERNAL_LINKS]]
- Brand voice: [[BRAND_VOICE]]

## Keyword frequency policy

Count exact, case-insensitive matches only in the visible English content in
Module 1 through Module 6. Do not count `<keyword_plan>`, Keyword Summaries,
or the Final SEO Report.

An occurrence of a longer exact phrase also counts as an occurrence of a
complete exact phrase contained within it. For example, if `[[LONG_KEYWORD]]`
contains `[[PRIMARY_KEYWORD]]`, one use counts toward both phrases.

### Primary keyword

Use `[[PRIMARY_KEYWORD]]` [[PRIMARY_KEYWORD_TARGET]]. Place it only where it
clarifies the topic. Do not repeat it mechanically.

### Secondary and long-tail keywords

[[SECONDARY_KEYWORD_TABLE]]

### Restricted or low-relevance keywords

[[RESTRICTED_KEYWORD_POLICY]]

Rules:

- Do not place several exact keywords in one sentence or paragraph solely to
  satisfy the count.
- Use natural semantic variants when useful, but do not count them as exact
  matches.
- If a keyword would make the page misleading, irrelevant, or unnatural, use it
  zero times and explain why in the final report.
- Recalculate counts after the final rewrite. If you cannot verify a count,
  report it as unverified rather than inventing a number.

## Workflow

Before writing visible page copy, output a short `<keyword_plan>` that lists:

- Each keyword and the modules where it will appear
- The planned exact-match count for each keyword
- Any restricted keyword that will be omitted

Do not reveal detailed reasoning. After the plan, write the page content.

## Module 1: Hero and metadata

Generate:

- **Title Tag**: [[TITLE_WORD_RANGE]] words; [[TITLE_CHARACTER_GUIDANCE]] characters when applicable; include the primary keyword naturally.
- **Meta Description**: [[META_CHARACTER_GUIDANCE]] characters; include the primary keyword and a relevant secondary keyword only if natural.
- **Meta Keywords**: 3 to 5 relevant terms, not the complete keyword list.
- **H1**: [[H1_WORD_RANGE]] words; make the page promise clear.
- **Hero Paragraph**: [[HERO_LENGTH]] words; describe the reader outcome and the supported product mechanism.
- **Primary CTA**: [[PRIMARY_CTA_LABEL]].
- **Secondary CTA(s)**: [[SECONDARY_CTA_LABELS_AND_DESTINATIONS]].
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

Avoid empty language such as “transform your vision,” “unlock possibilities,”
or unsupported superlatives. The hero must state what the product helps the
reader do.

## Module 2: What it is / solution overview

Explain what [[PRODUCT_NAME]] does for [[AUDIENCE]] and how its relevant
workflows differ.

- **H2**: 5 to 10 English words.
- **Description**: 2 to 3 sentences.
- Generate [[MODULE_2_ITEM_COUNT]] solution items. Each has an H3, a
  [[MODULE_2_PARAGRAPH_LENGTH]]-word paragraph, and a short CTA.
- Each item must connect a supported capability to a user task.
- Use only keywords that fit naturally.
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

## Module 3: Why choose this approach

Generate [[MODULE_3_ITEM_COUNT]] credible benefits or decision criteria.

- **H2**: 5 to 10 English words.
- **Description**: 2 to 3 sentences.
- **Section CTA**: Short and specific.
- Each item has an H3, a [[MODULE_3_PARAGRAPH_LENGTH]]-word paragraph, and a
  short CTA when relevant.
- Anchor each benefit in a supplied capability, cited evidence, or a clearly
  marked `[proof needed]` placeholder. Never use generic “best,” “leading,”
  “perfect,” or guaranteed-result claims.
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

## Module 4: How it works

Generate [[STEP_COUNT]] steps that explain the real user workflow.

- **H2**: 5 to 10 English words.
- **Description**: 2 to 3 sentences.
- **Section CTA**: Short and specific.
- Each step has an H3 and a [[STEP_PARAGRAPH_LENGTH]]-word paragraph.
- Explain relevant inputs, choices, review steps, outputs, and limitations.
- Include professional, technical, or regulated-work disclaimers only where the
  supplied facts require them.
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

## Module 5: Features and use cases

Generate [[FEATURE_COUNT]] feature or use-case cards.

- **H2**: 5 to 10 English words.
- **Section Description**: 2 to 3 sentences.
- **Section CTA**: Short and specific.
- Each card has a 5 to 12-word title, a [[FEATURE_PARAGRAPH_LENGTH]]-word
  paragraph, and a short CTA.
- Describe only supported features. Group them around user outcomes rather than
  presenting an unprioritized feature list.
- Use remaining relevant keywords only where they improve the explanation.
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

## Module 6: FAQ

Generate [[FAQ_COUNT]] useful questions a [[AUDIENCE]] reader would ask before
[[PRIMARY_CTA_ACTION]].

- **H2**: 5 to 10 English words.
- **Section Description**: 2 to 3 sentences.
- Each FAQ has an 8 to 15-word H3 question and a
  [[FAQ_ANSWER_LENGTH]]-word answer.
- Cover the supplied pricing/free-use policy, required inputs, core limitations,
  supported use cases, and any important output disclaimer.
- Do not add FAQ schema or make an unsupported statement just to use a keyword.
- **Keyword Summary**: List this module's actual exact-match counts in Chinese.

## Final SEO report

After writing Module 1 to Module 6, output this report. Count only visible
English user-facing content in those modules.

### 1. Primary keyword count

| Primary Keyword | Actual Count | Target | Status | Notes |
| --- | ---: | ---: | --- | --- |
| [[PRIMARY_KEYWORD]] | | [[PRIMARY_KEYWORD_TARGET]] | | |

### 2. Secondary and long-tail keyword count

| Keyword | Actual Count | Target | Status | Notes |
| --- | ---: | ---: | --- | --- |
| [[SECONDARY_KEYWORDS_FOR_REPORT]] |

### 3. Metadata check

Confirm:

- Title Tag word count and character count
- Meta Description character count
- H1 word count
- Meta Keywords count

### 4. Product accuracy check

Confirm in one sentence that the content does not claim anything outside the
supplied Product Facts and Boundaries, including unsupported professional
outputs, compliance, pricing, performance, or availability promises.

### 5. Anti-stuffing and humanization check

Confirm in Chinese that the page uses natural [[MARKET_AND_LANGUAGE]] English,
does not contain forced exact matches or consecutive repetitions, and has been
reviewed for generic AI-writing patterns without changing verified facts,
citations, links, metadata, required keywords, or CTAs.

## Writing requirements

- Write all user-facing page content in natural [[MARKET_AND_LANGUAGE]] English.
- Keyword Summaries and the Final SEO Report may be in Chinese.
- Use a professional, concise, credible SaaS voice.
- Keep CTAs short and state the next action.
- Do not use fabricated social proof, rankings, ratings, user counts, time
  savings, performance claims, or conversion data.
- Output every requested module in full. Do not use `same as above` or ellipses.
```

## Blog replacement modules

For an educational blog, replace Modules 2 through 5 in the generated prompt
with:

1. **Direct answer and context** — Answer the query in the opening; define the
   problem and the reader.
2. **Method or framework** — Explain the ordered steps with examples.
3. **Evidence, trade-offs, and common mistakes** — Cite provided sources and
   state limits or alternatives.
4. **Relevant product workflow** — Show one supported product use case only
   where it helps the reader complete a step.

Keep Module 1, Module 6, the keyword plan, and the Final SEO Report. Change
the primary CTA to a useful next action, such as reading documentation,
downloading an approved resource, or starting a trial.
