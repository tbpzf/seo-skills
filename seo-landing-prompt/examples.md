# Examples

## Keyword-only request

### User input

```text
Generate an SEO content prompt for “AI kitchen design”.
```

### Expected behavior

Generate a review-ready landing-page prompt template using:

```markdown
[[PAGE_NAME]]: AI Kitchen Design
[[SUPPLIED_PRIMARY_KEYWORD]]: ai kitchen design
[[PRIMARY_KEYWORD]]: ai kitchen design
[[PAGE_TYPE]]: SaaS landing page
[[MARKET]]: United States
[[PAGE_COPY_LANGUAGE]]: US English
[[INSTRUCTION_LANGUAGE]]: English  # or the user's request language
[[SEARCH_INTENT]]: Commercial investigation
[[PRODUCT_NAME]]: [[PRODUCT_NAME]]
[[PRODUCT_FACTS]]: [[PRODUCT_FACTS]]
[[PRIMARY_CTA_LABEL]]: [[PRIMARY_CTA_LABEL]]
[[KEYWORD_POLICY_BLOCK]]: natural mode
```

The generated prompt must:

1. Leave product modes, upload requirements, pricing/free-trial policy, design
   output limitations, and evidence as variables.
2. Not assume construction drawings, guaranteed measurements, or unlimited free
   use.
3. Use natural keyword mode with no invented numeric targets or per-module
   count tables.
4. Treat hero → problem → how it works → outcomes → proof → FAQ as possible
   reader jobs; retain and order sections according to the resolved task.
5. Require one primary CTA and forbid per-card CTAs.
6. Write planning notes and the final report in `[[INSTRUCTION_LANGUAGE]]`, not
   a hardcoded language.
7. Omit Meta Keywords.
8. Resolve intent uncertainty and source material before body copy. Research
   verified primary sources or derive clearly identified analysis where useful;
   complete default author intake before new body copy, reusing fitting intake
   or an explicit user opt-out. Ask one question at a time, wait for each answer,
   and cap the interview at 10 total. Keep gaps in the report.
9. Derive section detail from the reader's decision, with no invented heading
   word limits or item counts. Verify that the reader can complete the task.

Its “Fill before use” list should ask for:

1. Product capabilities and exclusions
2. Audience, conversion goal, and CTA destination
3. Secondary/long-tail keywords and any exact-count targets (optional)
4. Approved pricing, proof, sources, and internal links

## Sparse keyword set

### User input

```text
Primary keyword: AI room planner
Long-tail keywords: plan a room online, upload a floor plan
```

### Expected behavior

```markdown
[[SUPPLIED_PRIMARY_KEYWORD]]: AI room planner
[[PRIMARY_KEYWORD]]: AI room planner
[[SUPPORTING_PRIMARY_KEYWORDS]]: None supplied
[[LONG_TAIL_KEYWORDS]]: plan a room online; upload a floor plan
[[SECONDARY_KEYWORD_TABLE]]:
| Keyword | Role | Intended intent/section | Use policy |
| --- | --- | --- | --- |
| plan a room online | Long-tail | Planning workflow | Use only where natural |
| upload a floor plan | Long-tail | Product input workflow | Use only if supported |
```

- Keep `AI room planner` as the single focus keyword.
- Use the two long-tail phrases only in sections that directly answer those
  intents; either phrase may be omitted when unsupported by product facts.
- Do not invent core keywords or additional long-tail phrases to fill a
  standard keyword table.
- Do not repeat all three phrases in the title, H1, opening, and every module.
- Use natural mode unless the user also supplies numeric targets.
- Report which supplied terms were used or omitted and why, without producing
  a density target.

## Complete brief request

### User input

```markdown
Keyword: release notes software
Page type: SaaS use-case landing page
Market: US English
Audience: product managers at B2B SaaS companies
Product facts: The product collects approved release details from Linear and
GitHub into an editable draft. A reviewer must approve a draft before it
publishes to a hosted changelog. Each published item can link to its source.
Limit: It does not publish without approval.
Primary CTA: Start a free trial
Internal links: /integrations/linear, /integrations/github, /product/changelog
Keyword policy: “release notes software” 3-5 times; “product release notes”
1-2 times; “automated release notes” 0-1 times.
```

### Expected prompt configuration

```markdown
[[PRIMARY_KEYWORD]]: release notes software
[[KEYWORD_POLICY_BLOCK]]: count mode
[[SECONDARY_KEYWORD_TABLE]]:
| Keyword | Target | Notes |
| --- | --- | --- |
| product release notes | 1-2 | Use only where natural |
| automated release notes | 0-1 | Do not imply publishing is automatic |

[[LIMITATIONS_AND_PROHIBITED_CLAIMS]]:
- Do not say the product publishes automatically or without review.
- Do not invent customer outcomes or time-saved metrics.
```

The generated prompt uses the landing-page skeleton in count mode. The final
report includes an Actual/Target keyword table because the user supplied
targets. FAQ covers the review step, source links, and required integrations;
free-trial policy appears only if supplied. Module items do not each get their
own CTA.

## Saved-plan export

### Input

```text
Use the saved content-plan.md to export a reusable prompt.
Plan state: reader situation and search intent supported by supplied customer
questions; three retained sections with recorded jobs; D1 documents the review
workflow and its approval limit; D2 is an attributed decision rule with its
source and scope. Packet ready. Three source questions have already been answered.
```

### Expected behavior

- Embed the complete saved plan unchanged, including D1/D2 details, source,
  attribution, evidence status, limits, section mapping, keyword decisions, and the
  existing interview count and author intake status/basis.
- Reuse the three planned sections. Do not regenerate a six-module outline or
  ask the same source questions again. A necessary general explanation may use
  a grounded answer without duplicating D1 or D2.
- Keep any provisional note or pending question when the saved plan has one.
  A blocked central promise remains blocked in the export.
- Include a concrete reader-task walkthrough and source-integrity check in the
  prompt. Keep unresolved gaps and readiness notes outside page copy.
