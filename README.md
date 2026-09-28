# SaaS Content Skills

Focused workflows for audience-first SEO strategy, English SaaS landing pages,
SEO blogs, and press releases. The former combined content workflow is split by
content type so each skill has a clear trigger, artifact contract, and editorial
standard.

## Skills

| Skill | Purpose |
| --- | --- |
| `seo-audience-strategy` | Map audience situations, search journeys, page gaps, and people-centered content briefs |
| `seo-landing-page` | Plan, write, humanize, and grammar-check SaaS landing pages |
| `seo-blog` | Plan, write, humanize, and grammar-check useful SaaS blog posts |
| `seo-pr` | Draft or audit factual, newsworthy SaaS press releases |
| `seo-landing-prompt` | Generate reusable prompts for landing-page writing only |
| `seo-writing` | Shared landing-page and blog planning/drafting engine |
| `humalizer` | Fact-safe humanization used by the SEO workflows |
| `harper-grammar` | Optional local Harper grammar check |

## Install

Install all local skills with the official `skills` CLI:

```bash
npx skills add tbpzf/skills -g
```

Omit `-g` to install for the current project only. Blader Humanizer and Stop
Slop remain pinned remote runtime dependencies; they are read from GitHub and
are not installed locally.

## Usage

### Audience-first SEO strategy or content brief

```text
Use seo-audience-strategy to map how our target customers evaluate release
notes software. Review our existing pages, identify meaningful content gaps,
and create a brief for the highest-priority page. Label assumptions separately
from customer and search evidence.
```

This skill produces a strategy or brief, not finished copy. `seo-writing` keeps
a lightweight version of the same situation rules inside its planning stage and
does not load this skill during an ordinary page or post.

### SaaS landing page

```text
Use seo-landing-page to write an English feature landing page for "release
notes software". The audience is B2B SaaS product managers. Use only the
product facts below and make "Start a free trial" the primary CTA.
```

The workflow writes `seo-content/<keyword>-landing/` with `prompt.md`,
`content-plan.md`, `content.md`, and `workflow-status.md`.

### SaaS blog

```text
Use seo-blog to write an evidence-led article about how product teams create
useful release notes. The reader is a product manager evaluating their current
workflow.
```

The workflow writes `seo-content/<topic>-blog/` with `content-plan.md`,
`content.md`, and `workflow-status.md`. It does not invoke the landing-page
prompt skill.

### SaaS press release

```text
Use seo-pr to draft a US press release announcing general availability of our
release-notes product. Flag every missing fact, approval, and media asset.
```

`seo-pr` applies a newsworthiness gate, inverted-pyramid structure, AP-style US
defaults, claim and quote verification, SaaS availability checks, and a
distribution-readiness audit. Its standards synthesize current guidance from
[PR Newswire](https://www.prnewswire.com/resources/articles/ap-style-press-release/)
and [Business Wire](https://www.businesswire.com/resources-education/product-launch-release-examples).

### Landing-page prompt only

```text
Use seo-landing-prompt to create a reusable landing-page prompt for the keyword
"customer onboarding software".
```

This skill does not generate blog prompts.

## Optional Harper CLI

`harper-cli` enables the final English grammar and spelling check for
`seo-landing-page` and `seo-blog`. Workflows never install it during a content
task. Follow the
[official Harper installation guide](https://writewithharper.com/docs/integrations/language-server),
then verify:

```bash
harper-cli --version
harper-cli lint --help
```

If Harper is unavailable, the workflow records the grammar stage as skipped and
still saves the content.

## Upstream projects

- [blader/humanizer](https://github.com/blader/humanizer) supplies the pinned
  remote rewrite instructions used inside the SEO guardrails.
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) supplies
  the pinned remote final prose review.
- [Automattic/harper](https://github.com/Automattic/harper) supplies the optional
  local grammar CLI.

## Validate

```bash
ruby scripts/validate-skills.rb
```
