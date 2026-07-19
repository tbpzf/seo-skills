---
name: humalizer
description: Edit English SaaS SEO drafts to remove generic AI-writing patterns while preserving verified claims, search intent, keywords, metadata, internal links, and conversion paths. Use when humanizing, polishing, or reviewing SEO blogs and landing pages that sound templated, overly promotional, or AI-generated.
---

# Humalizer for SaaS SEO

Edit SEO content so it reads as a specific writer explaining a real product or problem to a real audience. This is a writing-quality pass, not an AI detector and not a way to guarantee rankings or evade detection systems.

## Guardrails

1. Preserve verified facts, legal language, technical meaning, citations, keywords, headings, links, and the primary CTA unless the user authorizes a change.
2. Do not fabricate experience, opinions, customers, results, sources, product behavior, or personal anecdotes to make text sound human.
3. Keep the page's search intent and conversion path intact. A landing page needs clear benefits and a CTA; an educational article needs a useful answer before a product mention.
4. Match the supplied brand voice. If no sample exists, use plain, precise, restrained English rather than a simulated personal voice.
5. Do not apply a mechanical ban on adverbs, passive voice, em dashes, bullets, or three-item lists. Revise them only when their use feels repetitive, vague, or less clear.
6. Prefer a factual qualifier to false certainty. Keep necessary caveats, safety warnings, and technical constraints.

## Intake

Collect the draft and, where available:

- Page type, target query, audience, and primary CTA
- Primary keyword/required terms and metadata that must remain
- Product fact sheet, approved claims, citations, and internal links
- Brand voice and 2-3 paragraphs of a human-written reference sample
- Sections that must not change, such as legal copy or product terminology

If the text contains unsupported claims, flag them for validation. Do not “humanize” an unverified claim into a more persuasive one.

## Workflow

### 1. Protect the SEO contract

Before editing, identify:

```markdown
Intent:
Reader and job to be done:
Primary keyword and required terms:
Verified product claims and citations:
Required internal links:
Primary CTA:
Voice reference:
```

Keep the keyword where it clarifies meaning. Do not add repetitions to meet a density target, and do not remove it if that would make the title, H1, or answer less relevant.

### 2. Calibrate voice when evidence exists

Analyze the supplied sample for:

- Sentence length and paragraph shape
- Level of formality and technical vocabulary
- Preferred verbs, transitions, punctuation, and degree of directness
- How it explains uncertainty, examples, and product value

Borrow the writing habits, not personal facts or claims. If there is no sample, write cleanly and specifically without adding first person, humor, or a “founder” persona.

### 3. Diagnose patterns

Review the draft for these patterns. A pattern is a prompt to inspect, not an automatic deletion rule.

| Pattern | Revision approach |
| --- | --- |
| Significance inflation | Replace “pivotal,” “transformative,” or “a new era” with the actual effect or evidence. |
| Empty product praise | Name the feature, user, workflow, or limitation instead of “powerful,” “seamless,” or “best-in-class.” |
| Vague authority | Cite the source, name the team, or remove “experts say” and “industry leaders.” |
| Feature dumping | Group features by the user's task and explain the resulting workflow. |
| Keyword-shaped prose | Retain useful terms, but remove headings and sentences that exist only to repeat the query. |
| Throat-clearing | Start with the answer, claim, or action instead of announcing it. |
| Formulaic reversals | State the point directly instead of “not X, but Y” or “the real question is.” |
| Manufactured drama | Replace fragments, aphorisms, and punchline endings with complete, meaningful sentences. |
| Vague abstractions | Name the actor, action, constraint, and consequence. |
| Passive or missing actors | Name an actor when it improves accountability; keep passive voice when it is clearer or the actor is unknown. |
| Inanimate agency | Replace “the platform decides” or “the data tells us” with the actual system behavior or human action. |
| Filler and signposting | Cut “it is worth noting,” “let's dive in,” “in today's landscape,” and similar scaffolding. |
| Overexplaining | Remove restatements, needless reassurance, and definitions the intended reader already knows. |
| Metronomic rhythm | Vary sentence and paragraph structure where repeated patterns add no clarity. |
| Overhedging or false certainty | Use the narrowest accurate claim: “may,” “typically,” a condition, or a cited result. |
| Generic conclusion | End with the next decision, a practical summary, or a CTA that matches the page's intent. |
| Chatbot residue | Remove “I hope this helps,” offers to continue, and approval-seeking language. |

See [reference.md](reference.md) for source notes and SEO-specific before/after guidance.

### 4. Rewrite

- Keep the original coverage and section order unless the structure blocks comprehension.
- Lead paragraphs with the reader's answer, decision, or task.
- Use concrete nouns and verbs. Explain product behavior with observable details.
- Maintain scannable headings, lists, tables, and short paragraphs when they help the reader.
- Preserve citations and source context. Never turn a conditional result into a universal claim.
- Use a product mention where it genuinely helps the reader complete the step; otherwise leave it out.

### 5. Audit and revise

Audit the revised copy on five dimensions, scoring each 1-10:

| Dimension | Question |
| --- | --- |
| Specificity | Does each important claim name a real actor, behavior, result, or source? |
| Voice | Does the language fit the supplied brand and audience without invented personality? |
| Clarity | Can the reader understand the answer, workflow, and terms on the first pass? |
| SEO integrity | Are intent, useful keywords, metadata, headings, links, and citations preserved naturally? |
| Conversion integrity | Does the product value and CTA help the reader take the intended next step? |

If a score is below 7, revise the responsible section. Do not force a high score by cutting necessary qualification, evidence, or technical detail.

## Deliverable

Unless the user asks for only revised copy, return:

```markdown
## Humalization audit
- Preserved SEO contract:
- Patterns corrected:
- Claims or evidence requiring validation:

## Revised copy
[The revised text]

## Material changes
- [change and reason]
```

For a complete page, retain title tag, meta description, URL, H1, headings, links, citations, and CTA in the revised copy.
