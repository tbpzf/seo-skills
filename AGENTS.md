# Working on skills

1. When creating or editing a skill or this file, load `writing-for-agents`.
   For a skill, also read its `SKILL-MECHANICS.md` reference. Put invocation
   branches in the description, shared steps and completion criteria in
   `SKILL.md`, and branch-specific guidance behind links from the relevant step.
2. Trace callers and dependencies before changing a workflow contract.
   `seo-landing-page` and `seo-blog` own saved artifacts and merges; their
   supporting skills provide stage outputs. A shared-stage change is complete
   when both parent routes and their linked references agree on the inputs,
   outputs, and ownership.
3. Update `README.md` when public skill scope, routing, or artifacts change.
   Run `ruby scripts/validate-skills.rb` after edits. For behavior changes,
   trace a representative request through the affected route; the validator
   checks structure and fixed contracts, not output quality.
