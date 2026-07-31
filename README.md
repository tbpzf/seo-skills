# SEO Content Skills

Prompt-first SEO workflow for English SaaS pages:
`seo-content-workflow` → `seo-prompt-skill` → `seo-writing` → `humalizer` → `harper-grammar`.

## Install

Uses the official [`skills`](https://www.npmjs.com/package/skills) CLI. One command installs the complete set.

### Global (all projects)

```bash
npx skills add tbpzf/skills -g
```

### Current project only

```bash
npx skills add tbpzf/skills
```

After install, in Cursor Agent say: “用 seo-content-workflow，关键词是 …”  
Generated files land in the **current project** at `seo-content/<keyword-slug>/`.

The root workflow uses the sibling skills by stage and runs prompt generation,
saving, drafting, auditing, humanization, and final grammar checking in one
uninterrupted turn. Grammar checking uses a locally available `harper-cli`; if
it is unavailable, the workflow records the skipped check and still saves the
content. It does not require prompt approval or a separate humanization request;
interrupt with corrections whenever needed.

## Validate

Run the repository checks, which require only Ruby's standard library, before
publishing changes:

```bash
ruby scripts/validate-skills.rb
```
