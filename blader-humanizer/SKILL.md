---
name: blader-humanizer
description: Apply the blader/humanizer editorial pass to English prose while preserving source facts, citations, links, headings, and protected SEO requirements. Use as the automatic detailed humanization stage of seo-content-workflow or when a draft needs a structured, no-fabrication review for AI-writing patterns.
---

# Blader Humanizer Pass

Run a factual editing pass based on the workflow design of
[blader/humanizer](https://github.com/blader/humanizer). This is an editorial
review, not an AI detector and not a claim that the result can evade an
AI-detection system.

## Parent workflow contract

When called by [humalizer](../humalizer/SKILL.md), edit only the page copy
provided by the parent. Return the revised copy and a short list of material
edits. Do not add standalone draft/audit wrappers, change the parent document
structure, or make a network request for the upstream repository. Focus on
claim-safe pattern cleanup and specificity; the parent's later Stop Slop stage
handles residual rhythm and directness scoring.

## Required process

1. Preserve every supported fact, number, date, name, quote, citation, link
   target, technical term, required keyword, heading, and CTA. Do not invent
   specificity, experience, personality, or proof.
2. Match a supplied voice sample. Without one, use direct, restrained prose.
   Do not manufacture first-person anecdotes or opinions.
3. Inspect the draft against the pattern groups in
   [patterns.md](references/patterns.md). Treat a pattern as evidence to
   inspect, not an automatic deletion rule.
4. Write a first revision, then audit it for lingering formulaic language and
   fabricated or weakened information. Revise again when either is present.
5. Return the final revised copy. Preserve meaningful formatting, tables,
   lists, code, frontmatter, and protected text.

## SEO safety override

The parent SEO contract takes precedence over an upstream style preference.
Keep passive voice, an em dash, a list of three, a modifier, or an abstract
term when removing it would reduce precision, change a legal or technical
meaning, make a keyword unnatural, or conflict with a supplied voice sample.

## Source

This skill is an adapted implementation of the process documented by
[blader/humanizer](https://github.com/blader/humanizer). The upstream
repository is MIT-licensed. The local reference summarizes the applicable
patterns so this repository can run without a remote dependency.
