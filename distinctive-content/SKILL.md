---
name: distinctive-content
description: >-
  Turn thin, generic content requests into useful, distinctive material by
  checking for first-hand experience, subject-matter decisions, original data,
  concrete workflows, examples, trade-offs, or approved proof. Use as a gate or
  interview stage for SEO landing pages, owned-site blogs, guest posts, press
  releases, briefs, and other substantive copy when the source material is
  missing or weak. Ask one focused source question at a time, up to 10 total,
  when the writer needs the user's knowledge; use audit mode for existing copy.
---

# Distinctive Content

Make the source's real knowledge visible in the work. AI can organize, question,
and clarify supplied material; it cannot supply a credible experience, case,
result, opinion, or source that the user has not provided. A keyword, outline,
product category, or audience label is a starting signal, not a contribution.

This skill returns a transient evidence packet. The calling workflow owns the
article, page, release, brief, submission notes, and any saved files. Read
[interview.md](references/interview.md) when the interview branch is active and
[audit.md](references/audit.md) when reviewing existing copy.

## Invocation branches

| Branch | Use when | Output |
| --- | --- | --- |
| `gate` | A parent is about to plan, draft, or revise substantive content | Ready packet, provisional packet, or one next interview question |
| `interview` | The previous question was answered or the route is being resumed | Updated packet or one next question |
| `audit` | Existing copy needs a usefulness and distinctiveness review | Findings and repairs; no rewrite |

Run `gate` after the reader and editorial situation are known and before body
copy. Reuse a saved or supplied packet when its sources and scope still fit.
For a content-only request, run the same gate directly. A parent may proceed
with a `provisional` packet when the user explicitly accepts a source gap; mark
the gap in that parent's audit instead of filling it with invented detail.

## Shared workflow

### 1. Inventory the source

Classify the material already available:

- **Practice:** what the author or team actually did, including sequence,
  tools, timing, review points, and implementation context.
- **Judgment:** a decision rule, opinion, trade-off, failure mode, or lesson
  that explains why one approach was chosen.
- **Proof:** approved data, customer evidence, experiment method, source,
  product demonstration, screenshot, or documented limitation.
- **Example:** a concrete before/after, input/output, scenario, artifact, or
  edge case that a reader can inspect or adapt.

Record the owner and source for each item. Treat product documentation as proof
of documented behavior, not proof of customer outcomes. Treat a plausible
inference as `hypothesis` and an absent source as `unknown`.

The inventory is sufficient when it contains a contribution that can change a
reader's decision or action and enough support to state its limits. It is
`interview-needed` when the planned angle would otherwise be filled with
interchangeable advice, generic claims, or an invented first-person voice.

### 2. Interview the source when needed

Use `interview` mode for the highest-value gap. Ask exactly one answerable
question in a turn and wait for the answer before asking another. Ask no more
than 10 questions for one content item; stop earlier when the packet supports
the angle and its sections. Follow the question order and examples in
[interview.md](references/interview.md).

Prefer questions that elicit a concrete situation, action, decision, constraint,
result, failure, example, or reusable rule. Ask for a source or permission to
label an item as personal experience when attribution matters. If the user
cannot answer, record `unknown`, choose the next highest-value gap, or return a
provisional packet when the remaining gap is nonessential. Never imply that the
user said something they did not say.

When a question is pending, return only the next question plus the interview
state needed to resume. Do not draft body copy in the same response; generic
drafting would hide the missing source and make the interview harder to answer.
This intake continuation is not an approval checkpoint; the calling route stays
autonomous and resumes as soon as the answer arrives.

### 3. Build the evidence packet

Normalize supplied facts and interview answers into this packet:

```markdown
## Distinctive content packet
- Status: ready | interview-needed | provisional | blocked
- Core contribution:
- Reader change: what the reader can decide, do, or understand better
- Source owner and attribution:
- Interview: questions asked / answered / remaining (0-10)

| ID | Material detail or claim | Type | Source | Confidence | Limit or approval | Planned use |
| --- | --- | --- | --- | --- | --- | --- |
| D1 | ... | practice / judgment / proof / example | ... | supplied / observed / hypothesis | ... | ... |

- Open evidence gaps:
- Provisional-use note, if any:
```

Keep a factual claim, its source, and its limit together. Separate a proposed
angle from evidence that actually supports it. For a landing page, a concrete
product workflow or approved proof may be the contribution. For a blog or guest
post, prefer a method, decision rule, example, or documented failure mode. For a
press release, the genuinely new event, verified scope, and approved quote or
attribution carry the packet.

### 4. Map the packet into the work

Pass the packet to the parent before planning or drafting. Give each major
section one planned item from the packet or an explicit reason that the section
needs no unique source. Use the material to answer the reader's question, show
the work, explain a trade-off, or bound a claim. Preserve attribution and
qualifications through humanization, grammar edits, and format changes.

The packet is doing its job when the outline and draft identify where each
material item appears, what reader action it supports, and what remains
unverified. A source packet is not permission to make a stronger claim than the
source supports.

### 5. Audit the result

Run `audit` after the draft and after any substantial rewrite. Follow
[audit.md](references/audit.md). Repair generic openings, interchangeable tips,
unsupported authority, and sections that merely repeat the keyword. Keep a
useful section when its job is clear even if its distinctive evidence is a
reader-facing limit or a transparent `proof needed` note. Return blockers when
the central promise still depends on missing evidence.

## Completion criteria

The gate is complete when the packet is `ready` or explicitly `provisional`,
the core contribution and source owner are named, and every material item has
a limit or approval status. Once a plan exists, map each planned section to an
item or record its gap. An interview branch is complete when it returns one
next question with a count from 0 to 10, or when the packet reaches a terminal
status. An audit is complete when every major section has a concrete reader job
and the findings identify the exact missing, generic, or unsupported material.
