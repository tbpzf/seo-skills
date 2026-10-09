# SaaS Content Skills

Help authors create useful English SaaS content that answers a real reader's
search need and offers a defensible contribution: better explanation, a usable
method, evidence, or reasoned judgment. These workflows cover landing pages,
owned-site blogs, guest posts, existing-content reviews, audience strategy, and
press releases for consumer-facing and business-facing products. Each finished-content route owns
its editorial decisions and output; supporting skills supply stages.

The shared [helpful content standard](distinctive-content/references/helpful-content.md) defines
completion by what the reader can decide, do, or understand. Search intent needs
recorded evidence or explicit uncertainty. Views need reasoning, alternatives,
and limits. Final verification walks through the promised task after editing;
keyword placement and polished prose alone cannot make content ready.

## Choose a Route

| Requested result | Start with | Default output |
| --- | --- | --- |
| Product, feature, audience, industry, or use-case page on your site | `seo-landing-page` | Saved page, metadata, plan, and status |
| Educational article on your own site | `seo-blog` | Saved article, metadata, plan, and status |
| Review existing content or assess changed product details | `seo-content-review` | Read-only findings and scoped update actions in chat |
| Article for another publication | `seo-guest-post` | Article and submission notes in chat; save only when asked |
| Audience map, content gaps, or a brief without finished copy | `seo-audience-strategy` | Strategy or brief |
| Reusable landing-page prompt only | `seo-landing-prompt` | Prompt template |
| Announcement or press release | `seo-pr` | Release and readiness audit |
| Source interview or distinctiveness audit for substantive content | `distinctive-content` | Evidence packet, next interview question, or audit findings |

Use `seo-writing`, `distinctive-content`, `humalizer`, and `harper-grammar` directly only for a
specific planning, drafting, audit, rewrite, or grammar stage. A generic
request for a finished page should enter through the route above.
The owned-site routes also support plan-only, targeted revision, read-only
audit, and resume requests. Their `workflow-status.md` separates a completed
editing run from whether the content has enough verified facts to publish.
Their existing-copy audit branches use `seo-content-review`; the existing
`seo-writing` audit mode remains a compatible entry to the same reviewer.
Draft/revision final checks retain their own workflow stages.

## Skills

| Skill | Purpose |
| --- | --- |
| `seo-audience-strategy` | Map audience situations, search journeys, page gaps, and people-centered content briefs |
| `seo-landing-page` | Plan, write, humanize, and grammar-check SaaS landing pages |
| `seo-blog` | Plan, write, humanize, and grammar-check useful SaaS blog posts |
| `seo-content-review` | Review usefulness, evidence, and outdated product details; plan or hand off scoped updates |
| `seo-guest-post` | Write, humanize, and grammar-check SaaS guest articles under publisher rules |
| `seo-pr` | Draft or audit factual, newsworthy SaaS press releases |
| `seo-landing-prompt` | Export reusable prompts for landing-page writing only |
| `seo-writing` | Shared landing-page and blog planning/drafting stage |
| `distinctive-content` | Interview and audit source material so substantive content has a concrete, useful contribution |
| `humalizer` | Fact-safe humanization used by the SEO workflows |
| `harper-grammar` | Optional local Harper grammar check |

The landing-page, owned-blog, and guest-post routes use
`seo-audience-strategy` automatically to build a focused, evidence-labeled
reader brief before planning the copy. You do not need to invoke it separately
for a finished article or page. A standalone strategy request is for an
audience map, content gaps, or a brief without finished copy; a routine writing
request does not trigger a full site audit.

Landing pages, owned blogs, guest posts, and press releases also use
`distinctive-content` during planning. They inspect available sources before
asking for private author knowledge. First-hand material, checked research,
transparent synthesis, and useful explanations can support the contribution.
A viewpoint records its evidence, reasoning, relevant alternative, and the
conditions where the recommendation changes. Original data and a contrarian
opinion are optional; fabricated experience, results, quotes, and authority are
forbidden.

The gate runs once and its full packet is reused for drafting and local edits.
When essential knowledge belongs to the author, it asks one focused question
per turn, up to 10 total, preserving the pending question and count for resume.
An incomplete plan can still be saved. Optional gaps allow a provisional packet
with unsupported claims omitted; a central unsupported promise blocks new body
copy. Plan-only requests may finish with gaps recorded, and wording corrections
do not trigger an unrelated source interview. Press releases use a journalist's
reporting task and verified news event, without requiring an SEO query.

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
product. Finished landing pages, blogs, and guest posts automatically run
humanization, a final prose review, and grammar checks when Harper is
available. They also run the focused audience-strategy stage. You do not need
to invoke those supporting skills separately.

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
keyword in the plan and final audit; provide any first-hand workflow, decision,
example, or approved proof that should make the page specific; omit the import phrase because it
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
the reader's next step. Provide a workflow, decision rule, example, data, or
source; if a material contribution is missing, answer the one-at-a-time source
questions before drafting.
```

The route saves `content-plan.md`, publishable `content.md`,
`seo-metadata.md`, and `workflow-status.md` under `seo-content/<topic>-blog/`.
An informational post may have no sales CTA. Its saved plan keeps intent
observations and uncertainty, the reader completion signal, and the full source
packet. Final readiness includes the helpful-content walkthrough, not just
finished editing stages.

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
omit each according to the host's readers and rules. Supply the contributor's
substantiated practice, examples, decisions, or evidence; the route may ask one
source question at a time before drafting. Return the article and
submission notes with the host sources and writing-check results.
```

Guest posts return an article and submission notes in chat unless you request
a file. A target website and keywords are enough to start host research; a
separate guidelines URL or audience description is optional. Without a named
publication or checked guidelines, the submission status stays provisional.
The draft and revision routes run Humalizer/Blader, Stop Slop, and available
Harper before the final submission audit; the notes report completed, skipped,
or blocked checks. Humanization is a prose review, not an AI-authorship test.
If a host bans this AI-assisted workflow, it stops before drafting and reports
the publication blocker.
AI-specific claim checks apply only when relevant.

### Press release

```text
Use $seo-pr to draft a US press release for PhotoNest's [actual announcement].
Launch date and availability: [verified facts]. Approved product claims:
[facts and sources]. Approved quote and media contact: [details]. Flag any
missing approval or asset before calling the release ready for distribution.
Include the concrete new event, verified scope, and attributable source that
make the announcement useful to a journalist.
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

### Distinctive source interview or audit

```text
Use $distinctive-content in gate mode for this English article about [topic].
Here is the reader situation: [reader and task]. Here are the facts, workflow,
examples, decisions, data, and sources I already have: [material]. Find the
strongest distinctive contribution. If a material source is missing, ask me
one focused question at a time, no more than 10 total. Return the evidence
packet with source owners, limits, and a section map; do not draft the article.
```

Use `audit` mode to review existing copy for generic advice, missing evidence,
unsupported authority, and sections that do not change what the reader can do.

### Review existing content and plan feature updates

```text
Use $seo-content-review in review mode for [article path or URL]. The reader
needs to [task]. Current product documentation: [URL or file]. Recent feature
changes and release scope: [approved notes]. Check usefulness, source support,
outdated claims and steps, and affected metadata or links. Return prioritized
findings with exact passages, evidence, reader impact, and concrete repairs.
Do not change the article.
```

The default is a read-only report in chat. A saved plan is optional. The review
checks whether the reader can complete the task, whether judgments are supported,
and whether current product changes affect the answer. Missing sources or
analytics are reported as verification gaps. Historical claims retain their
time context, and partial rollouts retain their plan, version, or platform limits.
Reports are saved only when requested.

Use `update-plan` for a section-level refresh brief without changing copy:

```text
Use $seo-content-review in update-plan mode for [existing article path].
Approved change note: [old behavior -> new behavior, effective release date,
plan/platform/rollout scope, and source]. Map the change to all affected claims,
steps, limits, recommendations, FAQ, metadata, screenshots, and CTA paths in this
article. Keep useful supported sections and explain what still needs checking.
Return the update plan without rewriting.
```

For an authorized update:

```text
Use $seo-content-review in review-and-update mode for [existing article path].
Apply the product changes supported by [current docs/release notes]. Update only
the affected feature descriptions, instructions, limits, and dependent metadata.
Preserve unrelated sections and historical examples. Save the updated owned-site
article using its existing workflow; report remaining verification gaps.
```

The reviewer hands edits to `seo-blog`, `seo-landing-page`, `seo-guest-post`, or
`seo-pr` according to the content type. Those routes keep ownership of the copy
and any saved artifacts. Guest and PR copy stay in chat unless a file is requested.
A review or update plan does not change `content-plan.md` or `workflow-status.md`;
a writing parent updates its own contract only when applying authorized changes.
A proposed feature or code change is not proof that it has reached production.
The [review and scoped-update validation](docs/content-review-validation.md)
records two independent executions against fictional content and their limits.

### Partial and follow-up requests

| Task | Example request |
| --- | --- |
| Plan only | `Use $seo-landing-page to plan a page. Primary keyword: digital photo organizer. Long-tail keywords: organize photos into albums; photo organizer for computer. Use [product brief]. Save the content plan, but do not draft copy.` |
| Read-only audit | `Use $seo-content-review to review [article path] for reader usefulness, unsupported claims, and outdated product instructions. Return findings only; do not edit the article.` |
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
| `distinctive-content` | `Use $distinctive-content in audit mode to find generic sections, missing source material, and unsupported first-person or outcome claims in [content]. Return findings and concrete repairs; do not rewrite.` |

## Optional Harper CLI

`harper-cli` enables the final English grammar and spelling check for
`seo-landing-page`, `seo-blog`, and `seo-guest-post`. Workflows never install
it during a content task. Follow the
[official Harper installation guide](https://writewithharper.com/docs/integrations/language-server),
then verify:

```bash
harper-cli --version
harper-cli lint --help
```

Harper respects the requested English variety and publisher style when its
installed CLI supports them. Otherwise it preserves the draft's spelling and
reports the limitation. If Harper is unavailable, the workflow records the
grammar stage as skipped.
Owned-site routes still save their content; Guest Post returns the article in
chat unless you request a file.

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

The [project review and route traces](docs/helpful-content-review.md) record the
behavioral changes and representative manual checks. Structural validation
checks packaging and workflow contracts; it does not measure output quality.
