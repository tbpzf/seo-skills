# SaaS Content Skills

Workflows for English SaaS landing pages, owned-site blogs, guest posts,
audience strategy, and press releases. They work for consumer-facing and
business-facing products. Each finished-content route owns its editorial
decisions and output; the shared writing and editing skills supply stages.

## Choose a Route

| Requested result | Start with | Default output |
| --- | --- | --- |
| Product, feature, audience, industry, or use-case page on your site | `seo-landing-page` | Saved page, metadata, plan, and status |
| Educational article on your own site | `seo-blog` | Saved article, metadata, plan, and status |
| Article for another publication | `seo-guest-post` | Article and submission notes in chat; save only when asked |
| Audience map, content gaps, or a brief without finished copy | `seo-audience-strategy` | Strategy or brief |
| Reusable landing-page prompt only | `seo-landing-prompt` | Prompt template |
| Announcement or press release | `seo-pr` | Release and readiness audit |

Use `seo-writing`, `humalizer`, and `harper-grammar` directly only for a
specific planning, drafting, audit, rewrite, or grammar stage. A generic
request for a finished page should enter through the route above.
The owned-site routes also support plan-only, targeted revision, read-only
audit, and resume requests. Their `workflow-status.md` separates a completed
editing run from whether the content has enough verified facts to publish.

## Skills

| Skill | Purpose |
| --- | --- |
| `seo-audience-strategy` | Map audience situations, search journeys, page gaps, and people-centered content briefs |
| `seo-landing-page` | Plan, write, humanize, and grammar-check SaaS landing pages |
| `seo-blog` | Plan, write, humanize, and grammar-check useful SaaS blog posts |
| `seo-guest-post` | Write SaaS guest articles for third-party publications under their editorial rules |
| `seo-pr` | Draft or audit factual, newsworthy SaaS press releases |
| `seo-landing-prompt` | Export reusable prompts for landing-page writing only |
| `seo-writing` | Shared landing-page and blog planning/drafting stage |
| `humalizer` | Fact-safe humanization used by the SEO workflows |
| `harper-grammar` | Optional local Harper grammar check |

The landing-page, owned-blog, and guest-post routes use
`seo-audience-strategy` automatically to build a focused, evidence-labeled
reader brief before planning the copy. You do not need to invoke it separately
for a finished article or page. A standalone strategy request is for an
audience map, content gaps, or a brief without finished copy; a routine writing
request does not trigger a full site audit.

## Install

Install all local skills with the official `skills` CLI:

```bash
npx skills add tbpzf/skills -g
```

Omit `-g` to install for the current project only. Blader Humanizer and Stop
Slop remain pinned remote runtime dependencies; they are read from GitHub and
are not installed locally.

## Reusable Product Facts

For repeated content about one product, provide the same current fact sheet or
product-documentation links to each route. Include the product name and
category, audience and task, supported workflow and limitations, approved
proof with sources, prohibited claims, brand voice, and available next actions
and destinations. Label unverified statements. Each content plan records the
facts it actually uses and their sources; the fact sheet itself is supplied
input, not a generated claim. A keyword alone does not establish product
behavior or a conversion path.

## Keyword Brief

For a landing page, blog post, or guest post, send the primary keyword and all
long-tail phrases exactly as you have them. Add any must-use, prohibited,
placement, or numeric count requirement explicitly. The workflow records every
supplied term, chooses those that serve one reader intent, and explains any
omission; it does not invent extra terms or keyword counts. The owned-site routes save
these decisions in `content-plan.md` and check them against the finished copy.
Guest posts keep them in the reader brief and submission notes, subject to the
host publication's rules. A keyword list supplies direction; approved product
facts still determine which claims can be written.

## Usage

In a Codex chat, name the skill with `$skill-name` and state the deliverable.
You can write the request in Chinese; specify English for the page or article.
Replace the example facts and URLs below with your own approved material.
**PhotoNest is fictional**; none of its capabilities or links describe a real
product. A finished landing page or blog automatically runs its writing,
humanization, and available grammar stages. Landing pages, blogs, and guest
posts also run the focused audience-strategy stage. You do not need to invoke
those supporting skills separately.

### Audience strategy or a single-page brief

```text
Use $seo-audience-strategy to create a brief for one page about "digital photo
organizer." Our audience is people whose photos are scattered across devices.
Review these existing pages: [page URLs]. Use these customer questions:
[interview/support notes]. Recommend improve, create, or defer, and label
observations separately from hypotheses. Do not write the page yet.
```

Use this route for a brief or content-gap map. A single-page brief does not
require a full site audit.

### Landing page for your own site

```text
Use $seo-landing-page to write an English landing page. Primary keyword:
digital photo organizer. Long-tail keywords: photo organizer for computer;
organize photos into albums; automatic Google Drive photo import. PhotoNest is
a consumer SaaS for people organizing photos on a computer. Approved product
brief: users can upload photos and arrange them in albums; direct Google Drive
import is not supported. The reader wants to find photos by album. No customer
research was supplied; label inferred triggers and objections as hypotheses.
Primary CTA: "Try PhotoNest" -> https://example.com/signup. Use only these facts, mark
missing proof, and save the page and SEO metadata. Account for every supplied
keyword in the plan and final audit; omit the import phrase because it
conflicts with the product.
```

The normal route saves `content-plan.md`, publishable `content.md`,
`seo-metadata.md`, and `workflow-status.md` under
`seo-content/<keyword>-landing/`. It exports `prompt.md` only when asked. If
the product capability, reader task, or CTA action is missing, it saves a plan
and blocked status before drafting.

### Blog post for your own site

```text
Use $seo-blog to write an English article. Primary keyword: how to organize
digital photos. Long-tail keywords: organize photos into albums; digital photo
folder structure; automatic cloud photo sync. The reader needs a practical
method even without PhotoNest. Approved product facts: PhotoNest lets users
upload photos from a computer and arrange them in albums; it cannot import
directly from cloud drives. Use the first two long-tail phrases where they
serve the article and explain whether the sync phrase belongs on another page.
Cite external claims near their sources. Do not add a sales CTA unless it helps
the reader's next step.
```

The route saves `content-plan.md`, publishable `content.md`,
`seo-metadata.md`, and `workflow-status.md` under `seo-content/<topic>-blog/`.
An informational post may have no sales CTA.

### Guest post for another publication

```text
Use $seo-guest-post to write a guest article for [target website URL].
Primary keyword: organize digital photos. Long-tail keywords: photo album
naming ideas; photo organization workflow; best photo organizer app. Find the
host's current contributor guidelines and analyze its intended readers and
relevant published articles. PhotoNest's approved facts are: [facts and
source]. Contributor relationship: [employee/founder/other]. Choose an angle
that adds value for those readers. Follow the host's link and disclosure rules.
Account for every supplied phrase in the brief and submission notes; use or
omit each according to the host's readers and rules. Return the article and
submission notes with the host sources you checked.
```

Guest posts return an article and submission notes in chat unless you request
a file. A target website and keywords are enough to start host research; a
separate guidelines URL or audience description is optional. Without a named
publication or checked guidelines, the submission status stays provisional.
AI-specific claim checks apply only when relevant.

### Press release

```text
Use $seo-pr to draft a US press release for PhotoNest's [actual announcement].
Launch date and availability: [verified facts]. Approved product claims:
[facts and sources]. Approved quote and media contact: [details]. Flag any
missing approval or asset before calling the release ready for distribution.
```

This route checks newsworthiness and returns a release with distribution
readiness notes. Its standards draw on [PR Newswire](https://www.prnewswire.com/resources/articles/ap-style-press-release/)
and [Business Wire](https://www.businesswire.com/resources-education/product-launch-release-examples).

### Reusable landing-page prompt only

```text
Use $seo-landing-prompt to create a reusable English SaaS landing-page prompt
for PhotoNest. Primary keyword: digital photo organizer. Long-tail keywords:
photo organizer for computer; organize photos into albums. Use only these
product facts: [approved facts]. Return the prompt and list any variables I
must fill before using it. Do not write the landing page.
```

This route returns a prompt template, not finished copy, and does not generate
blog prompts.

### Partial and follow-up requests

| Task | Example request |
| --- | --- |
| Plan only | `Use $seo-landing-page to plan a page. Primary keyword: digital photo organizer. Long-tail keywords: organize photos into albums; photo organizer for computer. Use [product brief]. Save the content plan, but do not draft copy.` |
| Read-only audit | `Use $seo-blog to audit [article path] for reader usefulness, unsupported claims, and SEO metadata. Return findings only; do not edit the article.` |
| Targeted revision | `Use $seo-landing-page to revise [page path]. Correct the upload workflow using [approved documentation], keep the other sections, and rerun the remaining checks.` |
| Resume | `Use $seo-blog to resume the run in [seo-content/topic-blog/workflow-status.md] from its next incomplete stage.` |
| Guest-post pitch | `Use $seo-guest-post to create a pitch and outline for [publication URL]. Primary keyword: [term]. Long-tail keywords: [phrases]. Research the host's guidelines and readers, use [verified contributor experience], and do not draft the article.` |

### Use a supporting skill directly

These return a single stage result. For a finished owned-site page or post, use
the parent route above so it owns the saved artifacts and merges. For a guest
article, use `seo-guest-post`; it returns copy in chat and saves only when asked.

| Skill | Example request |
| --- | --- |
| `seo-writing` | `Use $seo-writing in plan mode. Primary keyword: [main term]. Long-tail keywords: [all supplied phrases]. Audience: [reader]. Evidence: [sources]. Return a content plan with a decision for every phrase, but no article.` |
| `humalizer` | `Use $humalizer to revise [draft path]. Preserve its verified facts, citations, focus keyword, links, and CTA; return revised copy and material changes.` |
| `harper-grammar` | `Use $harper-grammar to check [English Markdown path] for spelling and grammar. Apply only clear corrections and report retained findings.` |

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
