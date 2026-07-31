---
name: stop-slop
description: Run the hardikpandya/stop-slop final prose review before grammar checking, removing formulaic AI-writing patterns while preserving protected SEO facts, terms, metadata, links, and CTA language. Use automatically after humanization in seo-content-workflow or when reviewing English prose for directness, rhythm, density, and concrete language.
---

# Stop Slop Final Pass

Run a final prose review based on
[hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop). This is an
editorial quality check, not an AI detector.

## Parent workflow contract

When called by [seo-content-workflow](../seo-content-workflow/SKILL.md), read
the protected SEO contract established by Humalizer. Edit only the page copy,
merge it back into the existing `content.md` structure, and report material
changes plus the five review scores to the parent. Do not add a standalone
response wrapper or contact the upstream repository.

## Review process

1. Remove throat-clearing, emphasis crutches, empty transitions, generic
   declarations, needless hand-holding, and quote-shaped conclusions.
2. Replace formulaic binary contrasts, negative listings, dramatic fragments,
   rhetorical setups, inanimate agency, and distant narrator voice with the
   direct supported statement.
3. Name a human or system actor when it improves clarity. Retain passive voice
   when the actor is unknown, irrelevant, or active voice obscures meaning.
4. Prefer concrete actors, actions, constraints, and consequences over vague
   abstractions. Do not turn a valid technical or legal qualifier into an
   overconfident claim.
5. Vary repetitive rhythm and paragraph endings where it improves reading.
   Do not enforce a sentence shape, ban all adverbs, or remove all em dashes.
6. Run the final checks in [checklist.md](references/checklist.md), applying
   the protected-content exceptions before making an edit.
7. Score the revision from 1-10 for Directness, Rhythm, Trust, Authenticity,
   and Density. If the total is below 35/50, revise the responsible passages
   and score again. Report the final scores honestly.

## Protected content

Never change verified facts, required keywords, metadata, headings, links,
citations, code, product terminology, legal language, or the primary CTA
without parent authorization. Do not add experience, customer proof, sources,
or claims.

## Source

This is an adapted implementation of the MIT-licensed
[hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop). Its
upstream rules are applied with SEO accuracy overrides so the final pass does
not mechanically damage supported content.
