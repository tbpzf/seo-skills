---
name: seo-content-workflow
description: Orchestrate an evidence-led SEO content workflow for English SaaS pages. Use when the user wants to turn a keyword into an SEO prompt, create or improve SaaS SEO content, or humanize an SEO draft while preserving search intent, factual accuracy, and conversion paths.
---

# SEO Content Workflow

Use this root skill to coordinate the repository's SEO skills. Each linked
skill remains independently usable; load only the stage needed for the user's
request.

## Skills

| Skill | Use independently when | Role in this workflow |
| --- | --- | --- |
| [seo-prompt-skill](seo-prompt-skill/SKILL.md) | The user gives a keyword and wants a reusable prompt or template. | Converts a keyword and brief into a complete SEO content prompt. |
| [seo-writing](seo-writing/SKILL.md) | The user wants a publishable SaaS landing page or educational blog post. | Researches, structures, writes, and audits evidence-led SEO content. |
| [humalizer](humalizer/SKILL.md) | The user already has a draft that sounds generic, templated, or AI-written. | Removes generic AI-writing patterns without changing the SEO contract. |

## Workflow routing

### 1. Prompt generation

Use `seo-prompt-skill` when the user asks for an SEO prompt, template, or
keyword-driven content specification.

- With a keyword only, produce a completion-ready prompt with explicit product
  fact, proof, audience, CTA, and keyword-policy variables.
- With a product brief, fill those variables and retain unknown facts as
  `[fact needed]`.
- Do not write the final page unless the user asks for it.

### 2. Content creation or revision

Use `seo-writing` when the user asks for page copy, a content brief, metadata,
an outline, or a rewrite of a SaaS landing page or educational article.

- Establish intent, audience, verified product facts, evidence, internal links,
  and one primary CTA before drafting.
- Preserve the prompt's keyword policy if the user provided one; otherwise use
  natural, intent-led keyword placement. Do not invent numeric keyword targets.
- Flag unsupported claims instead of making them more persuasive.
- In this end-to-end workflow, tell `seo-writing` to skip its standalone
  Humalizer pass; humanization happens once in the next stage.

### 3. Humanization

Use `humalizer` as the **only** full writing-quality pass for a completed SEO
draft in this workflow, or as the only stage when the user supplies an existing
draft for polishing.

Protect the SEO contract throughout: verified claims, source citations,
keywords, metadata, headings, internal links, and the primary CTA. Never invent
personal experience, customer proof, product behavior, or results to make copy
appear human-written.

## Default end-to-end sequence

For a request such as “create an SEO page from this keyword,” follow this order:

1. Intake: classify page type and intent; collect facts, audience, market,
   keyword policy, evidence, internal links, brand voice, and CTA.
2. Prompt: apply `seo-prompt-skill` to create or validate the content
   specification. Skip this output only when the user wants copy directly.
   Generated prompts should use natural keyword mode unless the user gave
   count targets, and should not embed a full Humalizer pass.
3. Draft: apply `seo-writing` to produce the page or article from verified
   facts. Skip the standalone Humalizer subsection; keep the clarity audit.
4. Humanization: apply `humalizer` once to remove generic patterns without
   changing facts or SEO requirements.
5. Final check: report outstanding evidence gaps, exact keyword counts only if
   the user requested a count policy, and any claims that require approval.

## Workflow guardrails

- This workflow improves content quality; it does not guarantee search rankings,
  conversions, or that a text will evade AI-detection systems.
- Do not invent product facts or apply industry-specific assumptions from one
  page to another.
- Do not force a numeric keyword policy when the user did not provide one.
- Keep the scope aligned with the standalone skills: English SaaS landing pages
  and educational blogs, not YMYL, local, ecommerce, programmatic SEO, or
  competitor-comparison content.
