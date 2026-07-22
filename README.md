# SEO Content Skills

Prompt-first SEO workflow for English SaaS pages:
`seo-content-workflow` → `seo-prompt-skill` → `seo-writing` → optional `humalizer`.

## Install / update

Uses the official [`skills`](https://www.npmjs.com/package/skills) CLI.

### Global (all projects)

```bash
# Install all skills
npx skills add tbpzf/skills -g -y --skill '*'

# Update installed skills
npx skills update -g -y
```

### Current project only

```bash
# Install into .cursor/skills (and compatible agent dirs)
npx skills add tbpzf/skills -y --skill '*'

# Update project skills
npx skills update -y
```

### Useful extras

```bash
# List skills in this repo
npx skills add tbpzf/skills -l

# List what you already installed
npx skills list

# Remove
npx skills remove seo-content-workflow
```

After install, in Cursor Agent say: “用 seo-content-workflow，关键词是 …”  
Generated files land in the **current project** at `seo-content/<keyword-slug>/`.
