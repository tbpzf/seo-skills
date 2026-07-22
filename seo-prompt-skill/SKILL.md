---
name: seo-prompt-skill
description: >-
  Generate reusable English SEO content prompts from a keyword and a product
  brief. Use when the user provides SEO keywords and wants a prompt,
  landing-page template, blog prompt, module outline, keyword plan, metadata
  requirements, or a final SEO verification report. In the root
  seo-content-workflow, stop after delivering the prompt and wait for user
  confirmation before saving or drafting page copy.
---

# SEO Prompt Builder

Turn a keyword and optional business context into a complete, reusable prompt for generating English SEO content. The output of this skill is a prompt, not the finished SEO page.

The generated prompt uses the structure of a content-production brief: fact boundaries, keyword plan, modular deliverables, and final verification. It must not imply that keyword counts, a particular structure, or AI-generated copy guarantees rankings.

When this skill runs inside [seo-content-workflow](../seo-content-workflow/SKILL.md), deliver the prompt for review and **stop**. Do not save the prompt or write page copy until the user confirms. After confirmation, the workflow saves `seo-content/<keyword-slug>/prompt.md` and continues with `seo-writing`.

## Input modes

### Keyword-only mode

When the user supplies only a keyword:

1. Generate a completion-ready prompt immediately.
2. Use the keyword as the primary keyword.
3. Default to an English SaaS landing page for a US audience only if the user gives no page type or market.
4. Keep product facts, CTA, audience, evidence, and restrictions as clearly marked variables such as `[[PRODUCT_FACTS]]`.
5. Default keyword policy to natural mode (no numeric targets).
6. Set `[[INSTRUCTION_LANGUAGE]]` to the user's language for the request, and `[[PAGE_COPY_LANGUAGE]]` to the requested page language (default US English).
7. Add a short “fill before use” list after the prompt. Do not ask questions before producing the prompt.

### Brief mode

When the user supplies a keyword plus context, use the supplied facts to fill the variables. Request only material missing facts if the user asks for an executable prompt with no placeholders.

Collect when available:

- Primary keyword, secondary keywords, and terms that must or must not appear
- Page type: SaaS landing page, feature, use case, industry, product, or educational blog
- Market, page-copy language, instruction/report language, audience, reader task, and brand voice
- Product capabilities, limits, pricing/free-trial policy, compliance or legal restrictions
- Approved proof: citations, customer stories, statistics, screenshots, and internal links
- Primary CTA, optional same-path secondary CTA destinations, required modules, and word-count constraints
- Keyword frequency policy: natural use (default), or explicit per-keyword targets

## Non-negotiable prompt requirements

Every generated prompt must:

1. State that the model may use only supplied or cited product facts.
2. Forbid fabricated product capabilities, integrations, customers, testimonials, metrics, sources, pricing, or certifications.
3. Preserve the difference between concepts, previews, and professional/regulated deliverables when relevant.
4. Require one clear search intent and one primary CTA; secondary CTAs may only support the same next step.
5. Require natural language, not keyword stuffing; semantic variants do not count as exact-match occurrences.
6. Require a `<keyword_plan>` before page copy and a final SEO report after it.
7. Use count-mode reporting only when the user supplied numeric targets; otherwise use natural-mode placement notes with no invented targets or per-module count tables.
8. Exclude planning and reporting text from any exact keyword counts.
9. Require the writer to flag an impossible or unnatural keyword rather than force it into user-facing copy.
10. Include product-accuracy, conversion, and anti-stuffing/clarity checks. Do not require a full [Humalizer](../humalizer/SKILL.md) pass inside the generated prompt when a later humanization stage will run; a light clarity check is enough.

## Building the prompt

### 1. Classify the page

Choose the prompt shape that matches intent:

| Page type | Intent | Default modules |
| --- | --- | --- |
| Feature, use case, industry, product landing page | Commercial or transactional | Hero, problem, how it works, outcomes, proof, FAQ |
| Educational blog | Informational | Direct answer, method, evidence/limits, product connection, FAQ |

If the supplied keyword does not clearly match the product or page type, write a validation warning into the prompt instead of forcing topical relevance.

### 2. Configure keyword policy

- When a user specifies targets, use **count mode**: preserve each exact target range, explain overlap counting, and require an honest Actual/Target report.
- When no targets are supplied, use **natural mode**: intent-led placement only. Do not invent numeric targets, planned exact-match totals, or per-module keyword count tables.
- Define a `restricted keyword` area for awkward or weakly relevant terms. Allow zero uses and require an explanation in the report if omission improves clarity.
- In count mode only, tell the writer to count visible page copy in the specified modules and exclude `<keyword_plan>` and the final report.
- If the writer cannot verify a count reliably, it must say so rather than invent a total.

### 3. Configure factual boundaries

Put supplied facts in a `Product Facts and Boundaries` section. Translate them into constraints such as:

- What the tool does and does not do
- Which inputs, workflows, outputs, modes, or integrations exist
- Which claims require a citation or approved proof
- Which outcomes, pricing claims, safety claims, professional claims, or guarantees are prohibited

Do not transform a missing fact into a claim. Use `[fact needed]` in the generated prompt when necessary.

### 4. Select modules

For a landing page, use the six-module skeleton in [prompt-skeleton.md](prompt-skeleton.md). Adapt labels to the product, but keep the architecture aligned with `seo-writing`: hero, problem, how it works, outcomes, proof, FAQ. Keep one primary CTA; do not attach a CTA to every card or step.

For a blog, replace Modules 2 through 5 with the blog structure in the skeleton while retaining the keyword plan, fact boundaries, conversion rules, FAQ where relevant, and final SEO report.

### 5. Deliver

Return:

```markdown
## Generated SEO content prompt
[A complete copy-paste-ready prompt in [[INSTRUCTION_LANGUAGE]]]

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

## Quality check

Before delivering the generated prompt, verify:

- The primary keyword is present in the role/goal and keyword policy.
- Every product statement comes from the user or remains a variable.
- Page type, audience, market, intent, modules, and CTA are explicit.
- Keyword policy is natural mode unless the user supplied targets; count instructions explain scope and overlap only in count mode.
- Reports and planning notes use `[[INSTRUCTION_LANGUAGE]]`, not a hardcoded language.
- Metadata guidance does not require Meta Keywords.
- Product-accuracy, conversion, and anti-stuffing/clarity checks exist.
- The prompt has no domain-specific residue from an unrelated template (including forced Chinese report text or per-item CTA spam).

## References

Read [prompt-skeleton.md](prompt-skeleton.md) for the reusable copy-paste skeleton and [examples.md](examples.md) for keyword-only and brief-mode examples.
