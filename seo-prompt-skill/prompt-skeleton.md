# Reusable SEO content prompt skeleton

Replace every `[[VARIABLE]]` before use. Remove any bracketed field that is
not applicable.

- Page copy language: `[[PAGE_COPY_LANGUAGE]]` (default: US English).
- Instruction and report language: `[[INSTRUCTION_LANGUAGE]]` (follow the
  user's preferred language for the prompt itself; do not hardcode Chinese or
  any other language).

```markdown
# [[PAGE_NAME]] SEO Content Prompt

## Role and goal

You are a senior English SEO content strategist and SaaS conversion copywriter.
Create a complete, credible [[PAGE_TYPE]] for [[PRODUCT_NAME]] about
**[[PRIMARY_KEYWORD]]**.

Write for [[MARKET]] readers in [[PAGE_COPY_LANGUAGE]]. The page must serve
this search intent: [[SEARCH_INTENT]]. Help this audience:
[[AUDIENCE_AND_JOB_TO_BE_DONE]].

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

## Keyword policy

[[KEYWORD_POLICY_BLOCK]]

### Keyword inventory and scale

- Focus keyword: `[[PRIMARY_KEYWORD]]`
- Supporting core keywords: [[SUPPORTING_PRIMARY_KEYWORDS]]
- Long-tail keywords: [[LONG_TAIL_KEYWORDS]]

If either supporting list is empty, write `None supplied`; do not generate
replacement exact-match phrases unless keyword research was explicitly
requested.

### Focus keyword

Use `[[PRIMARY_KEYWORD]]` [[PRIMARY_KEYWORD_GUIDANCE]]. Place it only where it
clarifies the topic. Do not repeat it mechanically.

### Supporting core and long-tail keywords

[[SECONDARY_KEYWORD_TABLE]]

Include only supplied terms selected for this page. The table may be empty.

### Restricted or low-relevance keywords

[[RESTRICTED_KEYWORD_POLICY]]

Shared rules:

- Treat the supplied inventory as the complete input, not a quota to expand.
  Do not create extra required keywords to reach three core terms or ten to
  twelve long-tail terms. When keyword research was explicitly requested, keep
  new suggestions optional until the user or workflow selects them.
- Do not require every supplied phrase to appear. Select only terms that add a
  distinct meaning or answer a relevant sub-intent on this page.
- Do not give every keyword its own heading, paragraph, or module. Do not place
  multiple exact phrases together when a natural sentence would use one.
- Do not place several exact keywords in one sentence or paragraph solely to
  satisfy a count or density goal.
- Use natural semantic variants when useful; they do not count as exact matches.
- If a keyword would make the page misleading, irrelevant, or unnatural, use it
  zero times and explain why in the final report.
- Never invent a numeric target the user did not supply.

## Workflow

Before writing visible page copy, output a short `<keyword_plan>` that lists:

- Where the primary keyword and any required terms will appear (title, H1,
  opening, relevant headings or body)
- Which supporting core and long-tail terms were selected for this page, and
  the distinct reader intent or section purpose each serves
- Any restricted keyword that will be omitted
- Exact planned counts **only if** the keyword policy includes numeric targets

Do not reveal detailed reasoning. After the plan, write the page content.

## Conversion rules

- Use one primary CTA: [[PRIMARY_CTA_LABEL]] → [[PRIMARY_CTA_DESTINATION]].
- Secondary CTAs, if any, must support the same next step:
  [[SECONDARY_CTA_LABELS_AND_DESTINATIONS]].
- Do not add a CTA to every card, benefit, or step. Repeat the primary CTA only
  at natural decision points (hero, after proof, and after FAQ).

## Module 1: Hero and metadata

Generate:

- **Title Tag**: [[TITLE_WORD_RANGE]] words; [[TITLE_CHARACTER_GUIDANCE]]
  characters when applicable. Make it clear on the first read, state the page
  topic directly, and include the primary keyword naturally. Do not use a
  teaser-style or clever title that hides the topic.
- **Meta Description**: [[META_CHARACTER_GUIDANCE]] characters; include the
  primary keyword and a relevant secondary keyword only if natural.
- **H1**: [[H1_WORD_RANGE]] words. Include the primary keyword naturally and a
  specific, supportable user benefit or outcome. Make the promise clear on the
  first read; do not use a vague slogan or a generic benefit such as “work
  smarter.”
- **Hero Paragraph**: [[HERO_LENGTH]] words; audience + outcome + supported
  product mechanism.
- **Primary CTA**: [[PRIMARY_CTA_LABEL]].
- **Optional secondary CTA**: only if it supports the same next step.

Avoid empty language such as “transform your vision,” “unlock possibilities,”
or unsupported superlatives. The hero must state what the product helps the
reader do.

## Module 2: Problem / old workflow

Explain the costly or frustrating work in the reader's language and why common
alternatives fall short. Use only supportable contrasts.

- **H2**: 5 to 10 words in [[PAGE_COPY_LANGUAGE]].
- **Description**: 2 to 3 sentences.
- Optional: [[MODULE_2_ITEM_COUNT]] short problem points (H3 + paragraph). No
  per-item CTAs.

## Module 3: How the product works

Generate [[STEP_COUNT]] steps that explain the real user workflow for this use
case.

- **H2**: 5 to 10 words in [[PAGE_COPY_LANGUAGE]].
- **Description**: 2 to 3 sentences.
- Each step has an H3 and a [[STEP_PARAGRAPH_LENGTH]]-word paragraph.
- Explain relevant inputs, choices, review steps, outputs, and limitations.
- Include professional, technical, or regulated-work disclaimers only where the
  supplied facts require them.
- No per-step CTAs.

## Module 4: Outcomes and benefits

Generate [[MODULE_4_ITEM_COUNT]] outcome sections tied to specific supported
capabilities.

- **H2**: 5 to 10 words in [[PAGE_COPY_LANGUAGE]].
- **Description**: 2 to 3 sentences.
- Each item has an H3 and a [[MODULE_4_PARAGRAPH_LENGTH]]-word paragraph.
- Anchor each benefit in a supplied capability, cited evidence, or a clearly
  marked `[proof needed]` placeholder. Never use generic “best,” “leading,”
  “perfect,” or guaranteed-result claims.
- No per-item CTAs.

## Module 5: Proof and decision support

Present approved customer evidence, integrations, security/compliance detail,
product demonstration, or implementation evidence. If proof is missing, use
`[proof needed]` placeholders instead of inventing results.

- **H2**: 5 to 10 words in [[PAGE_COPY_LANGUAGE]].
- **Section Description**: 2 to 3 sentences.
- Generate [[PROOF_ITEM_COUNT]] proof or decision-support items when material
  exists.
- Describe only supported features or approved evidence. Group them around user
  outcomes rather than an unprioritized feature dump.
- Optional: repeat the primary CTA once after the proof section.

## Module 6: FAQ and closing CTA

Generate [[FAQ_COUNT]] useful questions a [[AUDIENCE]] reader would ask before
[[PRIMARY_CTA_ACTION]].

- **H2**: 5 to 10 words in [[PAGE_COPY_LANGUAGE]].
- **Section Description**: 2 to 3 sentences.
- Each FAQ has an 8 to 15-word H3 question and a
  [[FAQ_ANSWER_LENGTH]]-word answer.
- Cover the supplied pricing/free-use policy, required inputs, core limitations,
  supported use cases, and any important output disclaimer.
- Do not add FAQ schema or make an unsupported statement just to use a keyword.
- End with the primary CTA and a one-sentence post-click expectation.

## Final SEO report

After writing the modules, output this report in [[INSTRUCTION_LANGUAGE]].
Exclude `<keyword_plan>` and this report from any keyword counts.

### 1. Keyword check

[[KEYWORD_REPORT_BLOCK]]

### 2. Metadata check

Confirm:

- Title Tag clarity, focus-keyword inclusion, topic fit, and word/character
  count when guidance was supplied
- Meta Description usefulness and character count when guidance was supplied
- H1 clarity, focus-keyword inclusion, specific user benefit, topic fit, and
  word count when guidance was supplied

Do not require Meta Keywords.

### 3. Product accuracy check

Confirm in one sentence that the content does not claim anything outside the
supplied Product Facts and Boundaries, including unsupported professional
outputs, compliance, pricing, performance, or availability promises.

### 4. Conversion check

Confirm there is one primary CTA, that any secondary CTA supports the same next
step, and that the draft does not add a CTA to every section item.

### 5. Anti-stuffing and clarity check

Confirm that the page uses natural [[PAGE_COPY_LANGUAGE]], does not contain
forced exact matches or consecutive repetitions, and has had obvious generic
AI scaffolding removed without changing verified facts, citations, links,
metadata, required keywords, or CTAs. Do not run a separate full humanization
skill here if a dedicated humanization stage will follow.

## Writing requirements

- Write all user-facing page content in natural [[PAGE_COPY_LANGUAGE]].
- Write `<keyword_plan>`, module notes if any, and the Final SEO Report in
  [[INSTRUCTION_LANGUAGE]].
- Use a professional, concise, credible SaaS voice.
- Keep CTAs short and state the next action.
- Do not use fabricated social proof, rankings, ratings, user counts, time
  savings, performance claims, or conversion data.
- Output every requested module in full. Do not use `same as above` or ellipses.
```

## Keyword policy blocks

When filling `[[KEYWORD_POLICY_BLOCK]]` and `[[KEYWORD_REPORT_BLOCK]]`, choose
exactly one mode.

### Natural mode (default; no numeric targets)

`[[KEYWORD_POLICY_BLOCK]]`:

```markdown
Use natural, intent-led placement for the primary keyword and any secondary
terms. Do not invent numeric frequency targets. Do not produce per-module
keyword count tables. Exact-match counting is not required unless the user later
adds targets.

Scale use to the supplied inventory:

- For a sparse set, keep the page focused and use fewer keyword-bearing
  placements; do not repeat the same small set across every module. Keep the
  content complete by using natural vocabulary rather than manufactured exact
  phrases.
- For a typical set of up to three core and up to twelve long-tail keywords,
  select and distribute only the terms that have a distinct role.
- For a larger or mixed-intent set, use only the coherent cluster for this page
  and omit or separate the rest.

These ranges describe common input sizes, not quotas. It is acceptable for a
relevant supplied keyword to appear zero times when including it would be
redundant, misleading, or unnatural.
```

`[[PRIMARY_KEYWORD_GUIDANCE]]`: `naturally where it clarifies the topic`

`[[KEYWORD_REPORT_BLOCK]]`:

```markdown
Briefly confirm:

- Where the primary keyword appears (title, H1, opening, and any other natural
  placements)
- Which supplied supporting and long-tail keywords were used or omitted, with
  a brief intent-based reason
- That no numeric density target was forced
- That no missing keyword slots were filled and the plan was scaled to the
  supplied inventory
- Any restricted keyword omitted and why
```

### Count mode (only when the user supplied targets)

`[[KEYWORD_POLICY_BLOCK]]`:

```markdown
Count exact, case-insensitive matches only in the visible page copy in
Modules 1 through 6. Do not count `<keyword_plan>` or the Final SEO Report.

An occurrence of a longer exact phrase also counts as an occurrence of a
complete exact phrase contained within it.

Preserve these targets exactly:

[[KEYWORD_TARGET_TABLE]]

Recalculate counts after the final rewrite. If you cannot verify a count,
report it as unverified rather than inventing a number.

Targets do not override readability. If meeting a supplied target would cause
keyword stuffing or distort the page intent, leave it unmet and explain the
decision in the report.
```

`[[PRIMARY_KEYWORD_GUIDANCE]]`: the user-supplied target range, for example
`3-5 times`

`[[KEYWORD_REPORT_BLOCK]]`:

```markdown
| Keyword | Actual Count | Target | Status | Notes |
| --- | ---: | ---: | --- | --- |
| [[PRIMARY_KEYWORD]] | | [[PRIMARY_KEYWORD_TARGET]] | | |
| [[SECONDARY_KEYWORDS_FOR_REPORT]] | | | | |
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

Keep Module 1, Module 6, the keyword plan, conversion rules, and the Final SEO
Report. Change the primary CTA to a useful next action, such as reading
documentation, downloading an approved resource, or starting a trial. Still use
only one primary CTA.
