---
name: seo-content-workflow
description: Orchestrate an evidence-led SEO content workflow for English SaaS pages. Use when the user provides SEO keywords and wants a prompt-first workflow: generate a prompt for confirmation, save the approved prompt in the project, then generate and save markdown SEO content. Also use when creating or improving SaaS SEO content, or humanizing an SEO draft while preserving search intent, factual accuracy, and conversion paths.
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

## Default keyword → content sequence

When the user supplies one or more keywords and wants SEO content (or does not
explicitly ask for prompt-only / copy-only), follow this gated sequence. Do not
skip gates.

```
Task progress:
- [ ] Stage 1: Generate prompt
- [ ] Stage 2: User confirmation (STOP)
- [ ] Stage 3: Save approved prompt
- [ ] Stage 4: Generate markdown SEO content
- [ ] Stage 5: Save markdown content
- [ ] Stage 6: Optional humanization (only if requested)
```

### Stage 1 — Generate prompt

Apply `seo-prompt-skill` to produce a completion-ready SEO content prompt from
the keyword(s) and any supplied product brief.

- With a keyword only, produce a completion-ready prompt with explicit product
  fact, proof, audience, CTA, and keyword-policy variables.
- With a product brief, fill those variables and retain unknown facts as
  `[fact needed]`.
- Use natural keyword mode unless the user gave count targets.
- Do not embed a full Humalizer pass in the prompt.

Present the prompt for review using the `seo-prompt-skill` deliverable shape
(`Generated SEO content prompt`, `Fill before use`, `Prompt configuration`).

### Stage 2 — Wait for confirmation (hard stop)

**STOP after Stage 1.** Do not save files, draft page copy, or run
`seo-writing` until the user explicitly confirms the prompt.

Treat as confirmation only messages such as: “确认”, “没问题”, “OK”, “approve”,
“save and continue”, or an edited prompt the user asks you to use.

If the user requests changes, revise the prompt and return to Stage 2. Repeat
until confirmed.

### Stage 3 — Save the approved prompt

After confirmation, write the approved prompt into the **current project**
(the user's workspace root, not this skills repository unless that is the
active workspace).

Default path (override only if the user specifies another location):

```text
seo-content/<keyword-slug>/prompt.md
```

- `<keyword-slug>`: lowercase primary keyword, spaces to hyphens, strip other
  punctuation (example: `AI kitchen design` → `ai-kitchen-design`).
- File contents: the full approved copy-paste prompt only (not the Stage 1
  review chrome such as “Fill before use” or “Prompt configuration”, unless
  the user asks to keep them).
- Tell the user the saved path.

### Stage 4 — Generate markdown SEO content

Apply `seo-writing` using the **saved** prompt as the content specification.

- Preserve the prompt's keyword policy, modules, CTA, fact boundaries, and
  language settings.
- Skip the standalone Humalizer subsection inside `seo-writing`; humanization
  happens only in Stage 6 when requested.
- Output markdown suitable for publishing: metadata, headings, body, CTAs,
  and evidence placeholders as required by the prompt / `seo-writing`
  deliverable.

### Stage 5 — Save markdown content

Write the generated page into the same project directory:

```text
seo-content/<keyword-slug>/content.md
```

Default file contents:

```markdown
# <H1>

## SEO metadata
- Title tag:
- Meta description:
- URL slug:
- H1:

## Draft
[Full page copy in markdown]

## Internal links and evidence to add
- ...

## Final audit
- ...
```

If the user asked for draft-only markdown (no strategy/audit sections), save
only the publishable page body plus metadata. Tell the user the saved path.

### Stage 6 — Optional humanization

Run `humalizer` only when the user asks to humanize or polish after the draft
exists. Protect the SEO contract throughout. If humanization changes the page,
overwrite `content.md` (or write `content.humanized.md` if the user wants both).

## Routing for non-default requests

| User intent | Action |
| --- | --- |
| Prompt only | Stages 1–2; save with Stage 3 only if they ask to save |
| Copy directly / skip prompt | Skip Stages 1–3; use `seo-writing`, then Stage 5 |
| Humanize existing draft | `humalizer` only |
| Revise an existing saved prompt | Edit `prompt.md`, re-confirm, then Stages 4–5 |

## Workflow guardrails

- This workflow improves content quality; it does not guarantee search rankings,
  conversions, or that a text will evade AI-detection systems.
- Never invent product facts. Prefer `[fact needed]` / `[proof needed]` over
  unsupported claims.
- Never force a numeric keyword policy when the user did not provide one.
- Scope stays English SaaS landing pages and educational blogs — not YMYL,
  local, ecommerce, programmatic SEO, or competitor-comparison content.
- Confirmation is mandatory in the default sequence. Saving and drafting
  without an explicit user OK is a workflow failure.
