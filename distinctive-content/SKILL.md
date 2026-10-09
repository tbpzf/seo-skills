---
name: distinctive-content
description: >-
  Turn thin, generic content requests into useful, distinctive material by
  developing supported experience, research, judgment, workflows, or examples.
  Use as the source gate during planning for landing pages, blogs, guest posts,
  press releases, briefs, and other substantive copy. Research accessible gaps;
  interview when essential knowledge belongs to the user; use audit mode for
  existing copy. Reuse a fitting packet for drafting and minor revisions.
---

# Distinctive Content

Make a useful contribution visible and support it honestly. Supplied knowledge,
inspected research, and transparent synthesis can all help the reader. First-hand
experience, quotes, results, and attribution must come from their actual source.
A keyword, outline, product category, or audience label is a starting signal.

This skill returns a transient evidence packet. The calling workflow owns the
article, page, release, brief, submission notes, and any saved files. Apply the
[helpful-content standard](references/helpful-content.md) to the promised
reader task and the finished work.

## Invocation branches

| Branch | Use when | Output |
| --- | --- | --- |
| `gate` | Planning substantive content, or a changed promise/source needs a refreshed packet | Evidence packet and any essential next question or blocker |
| `interview` | The previous question was answered or the route is being resumed | Updated packet or one next question |
| `audit` | Existing copy needs a usefulness and distinctiveness review | Findings and repairs; no rewrite |

Run `gate` once during planning after the reader and editorial situation are
known. For a content-only request, use the same gate directly. Reuse the packet
for drafting and minor edits when its promise, sources, scope, and approvals
still fit; refresh affected items when they change. A plan skeleton may expose
gaps while an interview is pending. New substantive body copy requires a
supported core promise. For a local wording or typo correction that introduces
no new substance, reuse the supported material and return any pre-existing
core gaps as publication blockers; interview only for knowledge essential to
the requested correction.

## Shared workflow

### 1. Inventory and develop the contribution

Classify the material already available:

- **Practice:** what the author or team actually did, including sequence,
  tools, timing, review points, and implementation context.
- **Judgment:** an attributed view or transparently derived decision rule,
  trade-off, failure mode, or lesson, with reasoning and conditions.
- **Proof:** approved data, customer evidence, experiment method, source,
  product demonstration, screenshot, or documented limitation.
- **Example:** a concrete before/after, input/output, scenario, artifact, or
  edge case that a reader can inspect or adapt.

Record the source owner, exact supporting reference, and scope/date when relevant.
Separate `supplied`, `checked`, `hypothesis`, and `unknown` evidence status;
supplied material has not necessarily been independently verified. Product
documentation supports documented behavior, not customer outcomes.

When accessible research or synthesis can fill a gap, follow
[research and judgment](references/research-and-judgment.md) before interviewing.
Identify the baseline answer and the contribution's added value for this reader.
The inventory is sufficient when the core promise is supported and the reader
can complete the promised task. One concrete detail or limitation cannot carry
an otherwise unsupported how-to. Helpful synthesis and explanation count;
claims of novelty need an actual comparison.

Choose the packet status:

- `ready`: the core promise and contribution are supported.
- `provisional`: the core is supported; nonessential gaps can be safely omitted
  or narrowed. Proceed autonomously and record the omissions in the audit.
- `interview-needed`: an essential gap requires knowledge only the user or
  contributor can supply. Ask the next source question; body drafting waits.
- `blocked`: essential support remains unavailable, conflicting, or unresolved
  after the interview ceiling. Name the missing input or narrower viable promise.

### 2. Interview the source when needed

Use `interview` mode for essential private knowledge the agent cannot obtain.
Ask exactly one answerable question in a turn and wait for the answer before
another. Ask no more than 10 questions for one content item; stop earlier when
the core promise is supported. Follow the priorities and examples in
[interview.md](references/interview.md).

Prefer questions that elicit a concrete situation, action, decision, constraint,
result, failure, example, or reusable rule. Confirm the source and attribution
when needed. If the user cannot answer, record `unknown`, research another route
or safely narrow the promise; return `blocked` if the essential gap remains.

When a question is pending, return the packet state and one next question,
including its count and gap. The parent may save a plan skeleton and resume
after the answer; it keeps body drafting pending. This is source intake, not
an approval checkpoint.

### 3. Build the evidence packet

Normalize supplied material, inspected research, synthesis, and interview
answers into this packet:

```markdown
## Distinctive content packet
- Status: ready | interview-needed | provisional | blocked
- Core contribution:
- Reader change: what the reader can decide, do, or understand better
- Baseline answer and added value:
- Judgment reasoning, alternatives, and conditions (or none):
- Source owner and attribution:
- Interview: questions asked / answered / remaining (0-10)
- Pending question: one next question or none

| ID | Material detail or claim | Type | Source | Evidence status | Limit or approval | Planned use |
| --- | --- | --- | --- | --- | --- | --- |
| D1 | ... | practice / judgment / proof / example | exact reference; scope/date when relevant | supplied / checked / hypothesis / unknown | ... | ... |

- Open evidence gaps: central or optional; owner and next action
- Provisional-use note, if any:
```

Keep a factual claim, its source, and its limit together. Separate a proposed
angle from evidence that actually supports it. For a landing page, a concrete
product workflow or approved proof may be the contribution. For a blog or guest
post, prefer a method, decision rule, example, or documented failure mode. For a
press release, the genuinely new event, verified scope, and approved quote or
attribution carry the packet.

### 4. Map the packet into the work

Pass the packet to the parent during planning. Map each major section to a
packet item, a concrete grounded answer, or a reason it needs no unique source.
Use the material to answer the reader's question, show the work, explain a
trade-off, or bound a claim. Keep editorial proof requests in the parent's
audit, outside publishable copy. Preserve attribution and qualifications
through humanization, grammar edits, and format changes.

The packet is doing its job when the outline and draft identify where each
material item appears, what reader action it supports, and what remains
unverified. A source packet is not permission to make a stronger claim than the
source supports.

### 5. Audit the result

Run `audit` after the draft and after any substantial rewrite. Follow
[audit.md](references/audit.md). Identify repairs for generic openings, interchangeable tips,
unsupported authority, and sections that merely repeat the keyword. Walk through
the promised task using only the draft and its verified artifacts. Keep relevant
reader-facing limitations; editorial `proof needed` notes belong in the audit.
Return blockers when the central promise still depends on missing evidence.
Audit mode returns findings and repairs for the parent without rewriting copy.

## Completion criteria

The gate returns a status justified by support for the core promise, a named
contribution and added value, and traceable items with evidence status and limits.
When planning is complete, every major section has a grounded answer or mapped
item, or a reason no unique source is needed. Drafting proceeds with `ready` or
`provisional`; other statuses carry the exact next question or blocker. An
interview returns one pending question with its count, or an updated packet with
no pending question. An audit is complete when it tests the promised task and
identifies exact repairs and central support gaps for every major section.
