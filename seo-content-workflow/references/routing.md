# Routing and guardrails

## Non-default routes

| User intent | Action |
| --- | --- |
| Topic and structure from keyword | Run Stages 1–5; save `content-plan.md`; stop without body copy |
| Content from a supplied structure | Normalize into `content-plan.md`, then run Stages 6–10; `prompt.md` optional |
| Keyword to complete article | Run Stages 1–10 with no checkpoint between planning and drafting |
| Prompt only | Generate the prompt; save only when requested; no confirmation turn |
| Copy directly / skip prompt | Build and save the complete content-plan contract, then run Stages 6–10 |
| Humanize existing draft | Stages 8–9, then Stage 10 when Harper is available |
| Continue an interrupted run | Read `workflow-status.md` (or infer it) and resume at `Next stage` |
| Revise a saved prompt or plan | Edit the artifact; regenerate downstream through Stage 10 unless plan-only or prompt-only |
| Explicitly skip humanization | Skip Stages 8–9, run Stage 10, record skipped statuses |
| Explicitly skip grammar checking | Finish after Stage 9; record `Grammar check: skipped by user` |

## Guardrails

- This workflow improves content quality; it does not guarantee search rankings,
  conversions, or evasion of AI-detection systems.
- Never invent product facts. Prefer `[fact needed]` / `[proof needed]`.
- Never force a numeric keyword policy when the user did not provide one.
- A blog must solve the reader's stated task or decision. Definition-only or
  keyword-shaped filler fails the workflow.
- Treat the audience as capable adults. Plain language is clear, not childish.
- Scope: English SaaS landing pages and educational blogs — not YMYL, local,
  ecommerce, programmatic SEO, or competitor-comparison content.
- No approval gate by default. Add a checkpoint only when the user asks.
- Humanization and Stop Slop are mandatory on the default route unless the user
  explicitly opts out.
- Grammar checking is non-blocking. Do not force unsafe Harper changes or claim
  that zero findings prove correctness.
- Missing facts never authorize invented claims. Continue with safe omissions or
  labeled placeholders and list publication blockers.
- Sibling skills are required as a complete repository install
  (`npx skills add tbpzf/seo-skill`). Do not approximate a missing stage from memory.
