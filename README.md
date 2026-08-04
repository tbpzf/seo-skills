# SEO Content Skills

An end-to-end SEO workflow for English SaaS pages and educational blogs:
keyword → writing prompt → search-intent-led outline → complete Markdown draft
→ protected humanization → directness review → grammar check → publish-ready
content with evidence gaps called out.

## Install

Uses the official [`skills`](https://www.npmjs.com/package/skills) CLI. One
command installs the local SEO workflow skills. Blader Humanizer and Stop Slop
remain on GitHub and are read remotely at runtime; they are not installed
locally.

### Global (all projects)

```bash
npx skills add tbpzf/seo-skill -g
```

### Current project only

```bash
npx skills add tbpzf/seo-skill
```

After install, in Cursor Agent say: “用 seo-content-workflow，关键词是 …”  
Generated files land in the **current project** at `seo-content/<keyword-slug>/`.

The workflow runs without approval checkpoints and maintains
`workflow-status.md` so interrupted work can resume. It never invents product
facts: unsupported claims are kept as evidence gaps or publication blockers.
Stage 8 reads Blader Humanizer from GitHub, and Stage 9 reads Stop Slop and its
needed references from GitHub. These stages require network access to
`raw.githubusercontent.com`. The workflow pins reviewed upstream commits so a
remote edit cannot silently change its behavior.

## Usage

In your coding agent, invoke `seo-content-workflow` in natural language.

### Generate a complete article from a keyword

```text
Use seo-content-workflow to write an English SaaS blog article for the keyword
"AI meeting notes". The audience is operations managers. Our CTA is "Start a
free trial". Do not make unsupported product claims.
```

The workflow creates `seo-content/ai-meeting-notes/` with `prompt.md`,
`content-plan.md`, `content.md`, and `workflow-status.md`.

### Generate only a topic and outline

```text
Use seo-content-workflow to create a topic and content structure only for
"customer onboarding automation". Do not draft the article.
```

This stops after the plan and saves `content-plan.md`.

### Draft from an existing outline

```text
Use seo-content-workflow to draft an English SaaS blog from this structure:
[paste the title, reader intent, sections, and CTA]
```

The workflow normalizes the outline, writes the article, then runs
humanization, Stop Slop review, and the optional Harper grammar check.

## Optional: Install Harper CLI

`harper-cli` enables the optional final English grammar and spelling check. It
is not installed automatically during content generation. Install it once in
your local environment, then confirm the executable is on `PATH`.

### macOS or Linux (Homebrew)

```bash
brew install harper
harper-cli --version
harper-cli lint --help
```

### Windows (Scoop)

```powershell
scoop install harper
harper-cli --version
harper-cli lint --help
```

### Other supported platforms

Harper also provides packages for Arch Linux, Nix/NixOS, and Termux, plus
portable binaries on its release page. Follow the official Harper installation
guide for the current command and binary for your platform:
[Harper language-server installation](https://writewithharper.com/docs/integrations/language-server).

After installation, `seo-content-workflow` invokes `harper-cli lint` with JSON
output. If it is unavailable or cannot produce structured output, the workflow
records the grammar check as skipped and still saves the article.

## Acknowledgements and upstream projects

This repository orchestrates and adapts open-source tools and editorial
workflows. It does not claim their original ideas or implementations as its
own.

- [blader/humanizer](https://github.com/blader/humanizer) by Siqi Chen:
  the workflow reads its upstream `SKILL.md` remotely and applies it inside the
  fact-safe SEO guardrails. The upstream project is licensed under the
  [MIT License](https://github.com/blader/humanizer/blob/main/LICENSE).
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) by Hardik Pandya:
  the workflow reads its upstream skill and reference files remotely for the
  final prose review. The upstream project is licensed under the
  [MIT License](https://github.com/hardikpandya/stop-slop/blob/main/LICENSE).
- [Automattic/harper](https://github.com/Automattic/harper):
  `harper-grammar` optionally invokes Harper's local `harper-cli` for grammar
  and spelling findings. Harper remains a separate optional dependency and is
  licensed under the [Apache License 2.0](https://github.com/Automattic/harper/blob/master/LICENSE).

The repository's contribution is the SEO-oriented workflow, artifact handling,
guardrails, and integration logic around these upstream projects.

## Validate

Run the repository checks, which require only Ruby's standard library, before
publishing changes:

```bash
ruby scripts/validate-skills.rb
```
