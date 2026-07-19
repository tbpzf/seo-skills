---
name: seo-prompt-skill
description: Generate reusable English SEO content prompts from a keyword and a product brief. Use when the user provides SEO keywords and wants a prompt, landing-page template, blog prompt, module outline, keyword plan, metadata requirements, or a final SEO count report.
---

# SEO Prompt Builder

Turn a keyword and optional business context into a complete, reusable prompt for generating English SEO content. The output of this skill is a prompt, not the finished SEO page.

The generated prompt uses the structure of a content-production brief: fact boundaries, keyword plan, modular deliverables, and final verification. It must not imply that keyword counts, a particular structure, or AI-generated copy guarantees rankings.

## Input modes

### Keyword-only mode

When the user supplies only a keyword:

1. Generate a completion-ready prompt immediately.
2. Use the keyword as the primary keyword.
3. Default to an English SaaS landing page for a US audience only if the user gives no page type or market.
4. Keep product facts, CTA, audience, evidence, and restrictions as clearly marked variables such as `[[PRODUCT_FACTS]]`.
5. Add a short “fill before use” list after the prompt. Do not ask questions before producing the prompt.

### Brief mode

When the user supplies a keyword plus context, use the supplied facts to fill the variables. Request only material missing facts if the user asks for an executable prompt with no placeholders.

Collect when available:

- Primary keyword, secondary keywords, and terms that must or must not appear
- Page type: SaaS landing page, feature, use case, industry, product, or educational blog
- Market, language, audience, reader task, and brand voice
- Product capabilities, limits, pricing/free-trial policy, compliance or legal restrictions
- Approved proof: citations, customer stories, statistics, screenshots, and internal links
- Primary CTA, secondary CTA destinations, required modules, and word-count constraints
- Keyword frequency policy: natural use, or explicit per-keyword targets

## Non-negotiable prompt requirements

Every generated prompt must:

1. State that the model may use only supplied or cited product facts.
2. Forbid fabricated product capabilities, integrations, customers, testimonials, metrics, sources, pricing, or certifications.
3. Preserve the difference between concepts, previews, and professional/regulated deliverables when relevant.
4. Require one clear search intent and one primary CTA.
5. Require natural language, not keyword stuffing; semantic variants do not count as exact-match occurrences.
6. Require a `<keyword_plan>` before page copy and a final SEO report after it.
7. Exclude planning and reporting text from exact keyword counts.
8. Require the writer to flag an impossible or unnatural keyword rather than force it into user-facing copy.
9. Include an accuracy check and an anti-stuffing check.
10. Require a final humanization pass using the principles in [Humalizer](../humalizer/SKILL.md): remove generic AI patterns without changing verified claims, links, metadata, keywords, citations, or CTA.

## Building the prompt

### 1. Classify the page

Choose the prompt shape that matches intent:

| Page type | Intent | Default modules |
| --- | --- | --- |
| Feature, use case, industry, product landing page | Commercial or transactional | Hero, solution, benefits, workflow, features, FAQ |
| Educational blog | Informational | Direct answer, method, examples/evidence, limits, product connection, FAQ |

If the supplied keyword does not clearly match the product or page type, write a validation warning into the prompt instead of forcing topical relevance.

### 2. Configure keyword policy

- When a user specifies targets, preserve each exact target range in a `Keyword Frequency Policy` section.
- When no targets are supplied, use `natural, intent-led use` for the primary keyword and do not invent numeric targets.
- Explain overlap: an occurrence of a longer exact phrase also counts as an occurrence of any complete contained exact phrase, case-insensitively.
- Define a `restricted keyword` area for awkward or weakly relevant terms. Allow zero uses and require an explanation in the report if it would reduce clarity.
- Tell the writer to count only visible English copy in the specified page modules. Exclude `<keyword_plan>`, module summaries, and the final report.
- Require an honest count. If the writer cannot verify a count reliably, it must say so rather than invent a total.

### 3. Configure factual boundaries

Put supplied facts in a `Product Facts and Boundaries` section. Translate them into constraints such as:

- What the tool does and does not do
- Which inputs, workflows, outputs, modes, or integrations exist
- Which claims require a citation or approved proof
- Which outcomes, pricing claims, safety claims, professional claims, or guarantees are prohibited

Do not transform a missing fact into a claim. Use `[fact needed]` in the generated prompt when necessary.

### 4. Select modules

For a landing page, use the six-module skeleton in [prompt-skeleton.md](prompt-skeleton.md). Adapt module labels and content requirements to the product. Keep the module count and report structure unless the user explicitly requests a shorter prompt.

For a blog, replace the landing-page modules with the blog structure defined in the skeleton while retaining the keyword plan, fact boundaries, FAQ where relevant, and final SEO report.

### 5. Deliver

Return:

```markdown
## Generated SEO content prompt
[A complete copy-paste-ready prompt in the user's preferred instruction language]

## Fill before use
- [Only unresolved variables or facts]

## Prompt configuration
- Page type:
- Primary keyword:
- Keyword policy:
- Audience and market:
- Primary CTA:
```

Do not add strategy commentary inside the copy-paste prompt unless the user asks for it.

## Quality check

Before delivering the generated prompt, verify:

- The primary keyword is present in the role/goal and keyword policy.
- Every product statement comes from the user or remains a variable.
- Page type, audience, market, intent, modules, and CTA are explicit.
- Exact-count instructions explain scope and overlap, if targets exist.
- Metadata, product-accuracy, anti-stuffing, and humanization checks exist.
- The prompt has no domain-specific residue from an unrelated template.

## References

Read [prompt-skeleton.md](prompt-skeleton.md) for the reusable copy-paste skeleton and [examples.md](examples.md) for keyword-only and brief-mode examples.
