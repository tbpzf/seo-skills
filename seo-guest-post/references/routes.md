# Guest-post routes

Select the route from the user's request. Keep the article and internal review
notes separate so submission copy is easy to use.

| Request | Deliverable |
| --- | --- |
| Angle, pitch concept, outline, or brief only | Guest-post brief; no body copy |
| Write a guest post | Complete article plus submission notes |
| Revise a supplied draft | Revised article plus material changes and submission notes |
| Audit a supplied draft | `seo-content-review` review stage, then prioritized findings and relevant submission notes; source unchanged |
| Review and update changed product details | `seo-content-review` update-plan stage, then the existing revision route for supported requested changes |

Brief-only requests complete Steps 1-2 of the parent. Draft and revision
requests continue through the humanization, Stop Slop, Harper, and final audit
steps. Audit-only requests inspect the supplied copy and report findings
without running rewrite stages or changing files; report prose or grammar
findings when requested. If the user opts out of
humanization, skip both Humalizer and Stop Slop; if they opt out of grammar,
skip Harper. Record each requested skip in submission notes.

## Brief route

Return the proposed publication, the Step 1 host rule check with a source URL
and check date per verified rule or `unknown`, and the adapted
`seo-audience-strategy` reader situation: trigger, current task or decision,
relevant constraints, current knowledge, next question, and evidence source
and label for each material detail. Add the thesis, why it fits now, original
contribution and evidence, the `distinctive-content` packet with its source
owner, author intake status/basis, completeness, limits, pending question,
and asked/answered counts,
observable reader-task completion, section outline in the reader's question
sequence, permitted product role, disclosure and link plan, and open questions.
If the host is unknown, label the proposed angle and format provisional.
When keywords were supplied, include the primary term and every long-tail
phrase with its intended reader question, planned section and wording, or
reason for omission, using the [keyword plan](keywords.md).

## Draft route

Return the complete article under `## Guest post`, with its title, byline or
byline placeholder, body, and citations in the host's required format. If
author intake is pending or an indispensable source gap prevents the central
reader task, return the brief and blocked submission notes instead of body
copy. Ask the packet's one pending question in chat and wait when one exists;
otherwise name the terminal blocker.
Omit unsupported optional claims and record their gaps in notes. Do not add
owned-site title tags, meta descriptions, URL slugs, internal-link plans, or sales CTAs unless the host asks
for them.

Follow with `## Submission notes` containing:

- Status: ready for editorial review, provisional, or blocked
- Host rule check: topic fit, length/format, citations, originality/rights,
  AI-assisted writing, product mentions/links, disclosure, byline, and
  pitch/submission process.
  Give each verified rule and its first-party URL and check date, or `unknown`
  with the pages/searches checked. Include audience evidence URLs.
- Reader situation and next question, with their evidence sources and labels;
  note any change from the brief
- Promised reader task and observable completion; final helpful-content
  walkthrough and distinctive-content audit findings, repairs, or blockers
- Distinctive contribution and packet status, including author intake
  status/basis and interview questions
  asked/answered, pending question, completeness, source owner, mapped
  sections, and open evidence gaps
- Contributor relationship, disclosure text/status, and byline status
- Evidence and source gaps, including AI-specific claims when applicable
- Originality, exclusivity, and rights status
- Link and product-mention compliance
- Humanization and directness review: completed, skipped by user, or blocked;
  material changes and any unresolved protected-contract conflict
- Harper grammar check: completed with correction and retained-finding counts,
  actual dialect or existing-spelling preservation mode, and any unsupported
  requested-variety limitation; skipped by user, or skipped with the unavailable
  CLI/output reason
- When keywords were supplied, each primary and long-tail term's actual use,
  natural variant, or omission and reason; note changes from the brief. For any
  user-set count, give actual/target or `unverifiable` with its reason
- Material edits or approvals still needed

Use `ready for editorial review` only when every known submission requirement
is met and checked, the reader-task walkthrough and contribution audit pass,
and the selected prose stages are complete. A failed
required Humalizer or Stop Slop source makes the writing route `blocked`;
unavailable Harper alone is a recorded skip. Use `provisional` while the host
or its rules, evidence,
rights, or approvals remain unchecked. Use `blocked` when a known mandatory
requirement is unmet, including an AI-assisted-writing ban, or an indispensable
claim is unsupported, or the central promised answer cannot be completed from
the article and its evidence. A nonessential source gap can stay provisional
without an approval checkpoint. When a
publication is unknown, `provisional` is the highest possible status. For a
limited number of company mentions, count article-body mentions by default;
check whether the host also counts the byline and disclosure, and flag that
interpretation if unclear. For sponsored placements, label the commercial
relationship and apply the host's sponsored-content rules; never present paid
placement as independent editorial coverage.

## Revision and audit routes

For revision, preserve verified facts, the writer's supported perspective, and
the distinctive-content packet. Reuse the existing reader brief and packet
when their audience and angle still fit. A local correction keeps the existing
task and source material and does not reopen an interview; rebuild the brief
or packet only if the change invalidates their scope or evidence. For a
substantive revision, apply
`seo-audience-strategy` in `single-content brief` mode when it is missing or
the audience or angle changes. Carry the resulting evidence labels into the
submission notes. Run the revised article through the selected prose and
grammar stages before final audit. For a substantive revision with a central
source gap, inspect available sources before asking the packet's one pending question through
`distinctive-content`; return blocked notes without rewriting an unsupported
central answer. Optional gaps remain provisional. A local correction may still
return its scoped edits while the audit records pre-existing publication
blockers without a new interview. Return the full revised article and note
material changes, unresolved blockers, and any host guideline conflicts.
Keep edits within the requested scope and report any unrelated substantive
findings separately. Recheck supplied keywords against the revised body and
account for each in submission notes.

For audit, pass the existing article, reader angle, supplied keywords, sources,
current product change notes, and known host rules to
[seo-content-review](../../seo-content-review/SKILL.md) in `review` mode. It
returns the helpful-content walkthrough, contribution audit, feature-change
findings, and necessary update actions without a new strategy or interview. Keep
unchecked host rules explicit and append submission-specific findings from the
known publisher contract. Use `provisional` when required host checks remain
unknown; a material known rule conflict remains `blocked`.

Return the prioritized report without a rewritten article or newly saved brief
unless the user asks for one. This parent owns every requested save. When the
user requests review and fixes, request `update-plan` mode and continue the
revision route with its full handoff brief; do not call this parent again from the reviewer. Draft/revision final
checks still use the parent Step 7 once, without another whole review cycle.
