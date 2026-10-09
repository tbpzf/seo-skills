# Export a saved landing-page plan

Use when `seo-landing-page` supplies `content-plan.md` for a reusable prompt.
This branch packages the existing drafting contract; it does not produce a new
angle, outline, keyword map, or evidence packet. The parent owns the file save.

1. Read the complete plan. Keep its reader situation, search-intent evidence,
   hypotheses, uncertainty, promise, section jobs, facts, voice, CTA, and keyword
   inventory. Include the full distinctive packet: each item's detail, source,
   attribution, evidence status, limit or approval, and section use. Keep packet
   status, open gaps, pending question, and questions already asked and answered.
   If the saved plan lacks a required field, preserve the gap and return it to
   the parent; exporting does not authorize inventing or repairing the plan.
2. Embed that plan verbatim under `## Saved drafting contract` in the prompt.
   Replace the independent skeleton's planning phase with the reuse instructions
   below. Replace generic module instructions with the saved sections and their
   jobs. Retain metadata and editorial checks that apply to the plan, and numeric
   length or keyword instructions only when present in the saved contract.
   Replace independent-template references to `<content_plan>` or numbered
   modules with the embedded saved contract and its actual sections. Exclude
   that contract and all reports from keyword counts; preserve any user-set
   count scope instead of introducing a module-based scope.
3. Embed the relevant [helpful-content checks](../../distinctive-content/references/helpful-content.md)
   as instructions, not a repository-relative link. Preserve the required
   instruction/report and copy languages. List any unresolved variables after
   the prompt.

Use these instructions around the embedded plan:

```markdown
## Use the saved drafting contract

Read the complete plan below before writing. Reuse its resolved reader task,
promise, intent evidence and uncertainty, section order and jobs, keyword
decisions, facts, source packet, attribution, limits, voice, and next action.
Do not create a replacement plan or change the angle because another template
suggests different sections.

First fold any newly supplied answer into the existing packet and clear a
resolved pending question without resetting the recorded interview count. If
the saved question remains unanswered, ask it and wait. Continue from the
recorded count, with no more than 10 total questions for this content item. If a central fact or source requirement remains
blocked, identify it and withhold the affected promise or body copy. Respect a
recorded provisional scope; do not upgrade it to supported evidence.

When the plan is ready for drafting, fulfill each section's question with its
promised answer, method, criterion, example, or artifact. Use mapped source
material where relevant. A necessary general section may give a grounded answer
or retain the plan's reason that no unique source is needed. Keep missing proof
and editorial notes in the final report, outside page copy.

If new verified facts contradict the plan, report the conflict and the smallest
necessary change. Preserve material source-to-claim mappings through revisions;
do not silently strengthen a conclusion, remove a limit, or substitute a new
promise.

Before delivering, critically walk through the reader's task with the draft.
Repair any missing step, unexplained decision, unsupported claim, or unavailable
artifact. Report remaining blockers and publication readiness separately from
whether drafting is complete.
```

The export is complete when its embedded plan matches the saved input, its
instructions reuse that plan without restarting resolved stages, and its
unresolved variables and blockers are visible outside publishable copy.
