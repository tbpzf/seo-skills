---
name: seo-content-workflow
description: >-
  Orchestrate a fully automatic, evidence-led SEO content workflow for English
  SaaS pages. Use when the user provides SEO keywords and wants the workflow to
  generate and save both a reusable prompt and markdown page copy in one run,
  without an approval checkpoint between stages. Also use when continuing an
  interrupted run or coordinating creation, revision, or humanization of SaaS
  SEO content while preserving search intent, factual accuracy, and conversion
  paths.
---

# SEO Content Workflow

Use this root skill to coordinate the repository's SEO skills. Each linked
skill remains independently usable; load only the stage needed for the user's
request.

## Execution contract

```yaml
execution_mode: autonomous
approval_required: false
intermediate_turns: false
```

Treat this block as the machine-readable default workflow contract. Override it
only when the user's current request explicitly asks for a review checkpoint or
prompt-only output.

## Dependency preflight

Route the request first, then verify only the skill needed for the next stage:

| Stage or route | Required file |
| --- | --- |
| Generate or revise a prompt | `../seo-prompt-skill/SKILL.md` |
| Draft, revise, or audit page copy | `../seo-writing/SKILL.md` |
| Humanize copy | `../humalizer/SKILL.md` |

In the default sequence, check `seo-prompt-skill` before Stage 1 and
`seo-writing` before Stage 4. Check `humalizer` only when the user requests
Stage 6. If a required skill is missing, stop and name it. Ask the user to
install the complete repository with
`npx skills add tbpzf/skills`; do not approximate that stage from
memory.

## Skills

| Skill | Use independently when | Role in this workflow |
| --- | --- | --- |
| [seo-prompt-skill](../seo-prompt-skill/SKILL.md) | The user gives a keyword and wants a reusable prompt or template. | Converts a keyword and brief into a complete SEO content prompt. |
| [seo-writing](../seo-writing/SKILL.md) | The user wants a publishable SaaS landing page or educational blog post. | Researches, structures, writes, and audits evidence-led SEO content. |
| [humalizer](../humalizer/SKILL.md) | The user already has a draft that sounds generic, templated, or AI-written. | Removes generic AI-writing patterns without changing the SEO contract. |

## Default keyword → content sequence

When the user supplies one or more keywords and wants SEO content (or does not
explicitly ask for prompt-only / copy-only), run this sequence end to end in
the same turn. Treat the initial request as authorization to generate and save
the intermediate prompt and final content. Do not add a confirmation step or
end the turn after an intermediate artifact.

```
Task progress:
- [ ] Stage 1: Generate prompt
- [ ] Stage 2: Save generated prompt
- [ ] Stage 3: Resolve content readiness with safe defaults
- [ ] Stage 4: Generate markdown SEO content
- [ ] Stage 5: Save markdown content
- [ ] Stage 6: Optional humanization (only if requested)
```

Use the checklist for internal progress only. Do not end a response merely to
show it. If the user interrupts with a correction, treat the latest instruction
as an override, update every affected artifact, and resume from the earliest
affected stage.

### Stage 1 — Generate prompt

Apply `seo-prompt-skill` to produce a review-ready SEO content prompt from
the keyword(s) and any supplied product brief.

- With a keyword only, produce a prompt template with explicit product fact,
  proof, audience, CTA, and keyword-policy variables.
- With a product brief, fill those variables and retain unknown facts as
  `[fact needed]`.
- Use natural keyword mode unless the user gave count targets.
- Do not embed a full Humalizer pass in the prompt.
- Resolve structural choices from the request and project context. Use the
  defaults in `seo-prompt-skill` when no explicit choice exists.

Pass the generated prompt directly to Stage 2. Do not present it as a blocking
review artifact, ask for approval, or wait for a follow-up message.

### Stage 2 — Save the generated prompt

Immediately write the generated prompt into the **current project**
(the user's workspace root, not this skills repository unless that is the
active workspace).

Default path (override only if the user specifies another location):

```text
seo-content/<keyword-slug>/prompt.md
```

- `<keyword-slug>`: lowercase primary keyword, spaces to hyphens, strip other
  punctuation (example: `AI kitchen design` → `ai-kitchen-design`).
- File contents: the full generated copy-paste prompt only (not the Stage 1
  review chrome such as “Fill before use” or “Prompt configuration”, unless
  the user asks to keep them).
- Continue to Stage 3 after writing. Report the saved path in the final
  response, not as a reason to pause.

### Stage 3 — Resolve content readiness with safe defaults

Read the saved prompt and scan for unresolved `[[...]]`, `[fact needed]`, and
`[proof needed]` placeholders. Resolve them without a user checkpoint whenever
the request, supplied materials, or current project provides the answer.

Use these automatic fallbacks when information remains unavailable:

- Infer page type, audience, market, language, and CTA from the keyword,
  request, and current project. Otherwise use `seo-prompt-skill` defaults.
- Never invent product behavior, limits, proof, pricing, integrations, or
  internal URLs. Omit claims that depend on them and record each gap in the
  final evidence/audit section.
- If a usable page needs an unknown destination or proof slot, use a clearly
  labeled placeholder and mark the saved draft as requiring that input before
  publication. This does not block generation.
- Persist every inferred or newly supplied value into `prompt.md`; do not rely
  on conversation context as the only copy of a required value.
- Finish normalizing and saving all structural values before invoking
  `seo-writing`; the saved prompt is the single source of truth for drafting
  and interrupted-run recovery.

Pause only when the primary topic/keyword cannot be determined at all, a
required sibling skill is unavailable, or the workspace cannot be read or
written. Do not pause merely because product facts, evidence, optional links,
pricing, brand voice, or a preferred CTA are missing when unsupported claims
can be omitted or labeled.

### Stage 4 — Generate markdown SEO content

Apply `seo-writing` using the **saved** prompt as the content specification.

- Preserve the prompt's keyword policy, modules, CTA, fact boundaries, and
  language settings.
- Skip the standalone Humalizer subsection inside `seo-writing`; humanization
  happens only in Stage 6 when requested.
- Output publishable markdown when no material placeholders remain. Otherwise,
  output a complete draft artifact with metadata, headings, body, CTAs, and a
  clear pre-publication gap list as required by the prompt / `seo-writing`
  deliverable.
- When Stage 3 left unresolved evidence or destination placeholders, generate
  the safest useful draft possible and surface those gaps in the audit. Do not
  stop to request approval.

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
| Prompt only | Generate the prompt; save it only when requested; do not add a confirmation turn |
| Copy directly / skip prompt | Skip Stages 1–3; use `seo-writing`, then Stage 5 |
| Humanize existing draft | `humalizer` only |
| Continue an interrupted run | Inspect saved artifacts and resume at the earliest incomplete stage without confirmation |
| Revise an existing saved prompt | Edit `prompt.md` and regenerate affected content automatically unless the user asks for prompt-only |

## Workflow guardrails

- This workflow improves content quality; it does not guarantee search rankings,
  conversions, or that a text will evade AI-detection systems.
- Never invent product facts. Prefer `[fact needed]` / `[proof needed]` over
  unsupported claims.
- Never force a numeric keyword policy when the user did not provide one.
- Scope stays English SaaS landing pages and educational blogs — not YMYL,
  local, ecommerce, programmatic SEO, or competitor-comparison content.
- The default sequence has no approval gate. Introduce a review checkpoint only
  when the user explicitly asks for one in the current request.
- Missing facts never authorize invented claims. Continue with safe omissions
  or labeled placeholders and identify anything still needed before publication.
