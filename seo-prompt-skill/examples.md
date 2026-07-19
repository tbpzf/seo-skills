# Examples

## Keyword-only request

### User input

```text
Generate an SEO content prompt for “AI kitchen design”.
```

### Expected behavior

Generate a copy-paste-ready English SaaS landing-page prompt using:

```markdown
[[PAGE_NAME]]: AI Kitchen Design
[[PRIMARY_KEYWORD]]: ai kitchen design
[[PAGE_TYPE]]: SaaS landing page
[[MARKET_AND_LANGUAGE]]: US English
[[SEARCH_INTENT]]: Commercial investigation
[[PRODUCT_NAME]]: [[PRODUCT_NAME]]
[[PRODUCT_FACTS]]: [[PRODUCT_FACTS]]
[[PRIMARY_CTA_LABEL]]: [[PRIMARY_CTA_LABEL]]
```

The generated prompt must leave product modes, photo upload requirements,
pricing/free-trial policy, design output limitations, and evidence as variables.
It must not assume that the product produces construction drawings, guarantees
measurements, or offers unlimited free use.

Its “Fill before use” list should ask for:

1. Product capabilities and exclusions
2. Audience, conversion goal, and CTA destination
3. Secondary/long-tail keywords and any exact-count targets
4. Approved pricing, proof, sources, and internal links

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
[[SECONDARY_KEYWORD_TABLE]]:
| Keyword | Target | Notes |
| --- | --- | --- |
| product release notes | 1-2 | Use only where natural |
| automated release notes | 0-1 | Do not imply publishing is automatic |

[[LIMITATIONS_AND_PROHIBITED_CLAIMS]]:
- Do not say the product publishes automatically or without review.
- Do not invent customer outcomes or time-saved metrics.
```

The generated prompt uses the landing-page skeleton. Its FAQ asks about the
review step, source links, required integrations, and the free-trial policy only
if the user has supplied it.
