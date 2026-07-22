# SEO Content Skills

Prompt-first SEO workflow for English SaaS pages:
`seo-content-workflow` → `seo-prompt-skill` → `seo-writing` → optional `humalizer`.

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

The root workflow uses the sibling skills by stage. When the workflow presents a
prompt for approval, use the explicit resume phrase it provides instead of
replying with a bare OK.

## Validate

Run the repository checks, which require only Ruby's standard library, before
publishing changes:

```bash
ruby scripts/validate-skills.rb
```
