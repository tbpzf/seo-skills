---
name: seo-pr
description: >-
  Write, revise, and audit factual SaaS press releases for product launches,
  major features, partnerships, funding, milestones, research, certifications,
  geographic expansion, and company news. Use when the user asks for a press
  release, news release, wire-ready announcement, SaaS launch announcement,
  boilerplate, headline, lead, executive quote draft, or media-ready release.
  Apply a newsworthiness gate, inverted-pyramid structure, AP-style defaults,
  evidence and attribution checks, and distribution-readiness audit. Do not use
  for landing pages, blog posts, media pitches, or fabricated announcements.
---

# SaaS Press Release

Create a release that a journalist can understand, verify, and reuse quickly.
Use the shared [helpful-content criteria](../distinctive-content/references/helpful-content.md)
for the journalist's task: identify the new event, verify its scope, and explain
why it matters to the relevant readers. Search-intent research is optional for
an owned newsroom page; it is not a requirement for newsworthiness. Read
[authoritative-guidance.md](references/authoritative-guidance.md) before the
first draft or when auditing format, claims, quotes, multimedia, or search
readiness.

Use [`distinctive-content`](../distinctive-content/SKILL.md) as the shared
source gate. It keeps the announcement anchored in the verified new event,
specific scope, approved evidence, and an attributable quote or explanation.
Inspect available sources before interviewing the source one question at a
time, up to 10 questions, for material knowledge those sources cannot supply.

## Operating modes

| Mode | Input | Output |
| --- | --- | --- |
| `draft` | Announcement brief and verified facts | Complete release plus readiness audit |
| `revise` | Existing release and corrected facts | Targeted rewrite plus material changes |
| `audit` | Existing release | Findings, blockers, and specific fixes; run the `distinctive-content` audit branch; do not rewrite unless asked |
| `component` | Request for headline, lead, quote draft, boilerplate, or contact block | Requested component with fact/approval labels |

Default to `draft` when the user asks to write a press release.

For `draft`, complete the workflow below. For `revise`, reuse the reader angle,
fact sheet, and packet while their sources and scope still fit; refresh only
what the requested change invalidates, then rerun the final audit. A local
wording correction retains the supplied facts and sources, reuses any valid
packet, and reports pre-existing publication blockers without a new interview.
Keep edits within the requested scope and report unrelated substantive findings
separately. For `audit`, inspect the existing release against the gates and
Step 7, return findings, and keep the
release unchanged.

For `component`, collect only the facts required by that component and apply
its Step 5 checks. Headlines and leads need a supported news event and angle;
a quote draft needs a factual basis, attribution, and an approval label.
Boilerplate and media contacts need current verified company or public-contact
facts and can be completed without a new event, a full release, or an event
interview. Return the requested component and any source or approval gaps;
completion means it performs that component's job with accurate facts and
visible unresolved requirements.

## Intake

Collect or resolve these fields before calling a draft distribution-ready:

- Announcement type and the genuinely new event
- Company, product, and partner names with exact capitalization
- Release status: immediate or embargoed, plus date, time, and time zone
- Dateline city and target market/language
- What changed, who it is for, why it matters, and why it is news now
- Availability date, regions, plans, pricing, access conditions, and important
  limits when relevant
- Verified product behavior, differentiators, specifications, and evidence
- Approved statistics, research methodology, customer results, certifications,
  funding figures, or partnership scope
- Approved spokesperson name, exact title, and quote; or permission to propose
  a quote for review
- Product/announcement URL, company newsroom URL, media assets, and captions
- Current company boilerplate and public media contact

Proceed with a supported first draft when nonessential details can be omitted
and recorded in the readiness notes. A missing fact that prevents the
journalist from identifying or verifying the central news blocks body copy;
return the brief and pending evidence question or terminal blocker instead.
Do not infer or invent dates, availability, pricing, product capabilities,
customers, partners, results, market leadership, funding terms, quotes, or
contact details.

## Workflow

### 1. Apply the newsworthiness gate

Write the announcement in one sentence: `[COMPANY] [news verb] [specific new
thing], enabling [audience] to [supportable significance], available [when or
where].`

Proceed when the brief contains a concrete, timely change with significance to
people outside the company. Typical SaaS news includes a meaningful product or
platform launch, major capability with a changed workflow, verified business
milestone, funded expansion, substantive partnership, certification, original
research, or material company event.

Flag a weak news angle when the only claim is routine maintenance, vague
innovation, an opinion without new evidence, or an old event. Do not inflate it.
Recommend a changelog, blog post, customer email, or product update when that
format fits better.

This gate is complete when a supported new event and its significance are
explicit, or the route returns a better-fitting format and the news blocker.

### 2. Choose one angle and audience

Select one primary news angle and the journalists/readers who care about it.
State why it matters in concrete operational, market, or customer terms, with
sources or hypothesis labels for audience assumptions. Define observable
completion: a reporter can identify what changed, for whom, when and where,
verify the material claims, and explain the significance and limits. Keep the
release focused on that event and audience.

This step is complete when the audience, angle, significance, evidence needs,
and reporting task are explicit. Pass them to the source gate.

### 3. Build the fact sheet and source packet

Record each material fact's source, scope, check date, and approval status.
Separate these evidence labels:

- **Checked:** inspected evidence supports the claim within its recorded scope
- **Supplied:** asserted by the user or company; record attribution and what
  remains unverified
- **Hypothesis:** a reasoned inference, not an established event or outcome
- **Unknown:** a needed fact without adequate evidence

Track approved attributable statements separately from factual verification.
Approval permits use of a quote; it does not prove the quote's factual claims.
Company documentation can establish its product's behavior, but outcomes,
comparisons, statistics, and superiority need evidence with applicable scope,
methodology, and limits. Keep restricted, contradicted, and unsupported claims
out of the release; record any indispensable omission as a blocker.

For a SaaS launch, explicitly verify product name, target user, problem solved,
actual workflow, launch/availability date, supported plans or markets, pricing
language, limits, security/compliance claims, integrations, and CTA destination.

Run `distinctive-content` in `gate` mode after the audience, angle, and fact
sheet. Pass the reporting task, new event, what changed in practice, inspected
sources, verified scope, methodology, approved quote, customer evidence, and
material limits. An inspected announcement, documented workflow, or supported
explanation can satisfy the packet without an interview. If it returns
`interview-needed`, ask its one pending question and resume with `interview`,
up to 10 questions total. Keep packet completeness, pending question, and
asked/answered counts in the readiness notes. A central source gap blocks body
copy; optional gaps may remain explicitly provisional while supported news
proceeds. For `audit`, use the read-only `distinctive-content` audit branch.

This step is complete when the source packet supports the central reporting
task, records provenance and material limits, and distinguishes nonessential
gaps from any blocker. A routine update cannot acquire news value through
adjectives.

### 4. Draft in inverted-pyramid order

Use this default US wire structure:

```markdown
FOR IMMEDIATE RELEASE

# [Specific headline naming the company/product and news]

*[Optional subhead adding verified significance, availability, or audience]*

**CITY, State, Month Day, Year** — [Lead with who, what, when, where, and why.]

[Most important supporting facts and SaaS availability details.]

[Approved evidence, product workflow, customer impact, or market context.]

"[Approved quote]," said [Name], [title] at
[Company].

[Useful next step with a descriptive link; optional media/press-kit note.]

## About [Company]
[Concise current boilerplate with verified company facts and website.]

## Media Contact
[Name or team]
[Email]
[Phone when supplied]
```

Adapt the date and dateline format to the distribution market. For US releases,
default to AP style. Keep the release concise; 300-500 words is a useful target
for a straightforward announcement, not a quota. Add length only when verified
context materially helps coverage.

### 5. Write each component to its job

- **Headline:** State the news directly with an active verb. Name the company or
  product. Prefer roughly 75-100 characters when natural; never sacrifice
  accuracy to hit a count and never put a hyperlink in the headline.
- **Subhead:** Add one useful fact the headline cannot hold. Omit when redundant.
- **Lead:** Deliver the essential five Ws in the first paragraph without a
  bloated list of claims or formulaic “leader in” language.
- **Body:** Add evidence and context in descending importance. Use short,
  one-idea paragraphs, descriptive subheads, and bullets only when they improve
  scanning. Avoid repeating the same ordinary word, phrase, sentence opening,
  or sentence shape in close succession. Delete redundant wording first; use a
  natural equivalent or recast the sentence only when meaning stays precise.
- **Series:** Do not stack three or more similar verbs, nouns, adjectives, or
  clauses merely to make the release sound comprehensive. Keep the material
  actions, split distinct ideas into sentences, or use bullets when reporters
  need the complete set. Preserve exact product names, technical terms, and
  factual labels instead of forcing synonyms.
- **Benefits:** Connect verified product behavior to a real user or market need.
  Do not convert every feature into an adjective-heavy promise.
- **Quote:** Add interpretation, stakes, or informed perspective that is not
  already in the lead. Do not fabricate approval. Label generated copy
  `Proposed quote - approval required` outside the release until approved.
- **CTA/link:** Give one clear next step using descriptive anchor text. Link to
  product detail, methodology, newsroom, or press assets that support the news.
- **Boilerplate:** Keep the reusable company description concise, current, and
  consistent with the website and newsroom.
- **Media contact:** Include a public email and/or phone number. Never expose a
  private contact supplied only for internal coordination.

### 6. Prepare media and search support

Recommend only relevant assets: product screenshots, launch demo, logo,
executive headshot, data visualization, customer-approved image, or press kit.
Give each asset a factual caption, descriptive filename, and alt text. Keep
essential facts in text rather than hiding them in an image.

When the release will live on an owned newsroom, recommend consistent company
and product names, visible publication date, plain-language meta description,
indexable text, and `NewsArticle` or `Article` schema only when it matches the
visible page. Treat search visibility as a clarity and sourcing benefit, never
as permission for keyword stuffing.

### 7. Run the release audit

Run `distinctive-content` in `audit` mode and apply the shared helpful-content
walkthrough to the final release. Using only its text and linked evidence,
check whether a journalist can complete the reporting task from Step 2. Repair
missing context, evidence, reasoning, or material limits within the requested
scope; report other substantive findings as remaining blockers before evaluating
prose. A central unanswered promise or unsupported significance claim blocks
readiness even when the format and style pass.

Verify:

- The event is genuinely new, specific, timely, and relevant outside the company.
- The distinctive-content packet names the reader change, source owner,
  completeness, evidence limits, pending question, asked/answered counts, and
  any approval still required.
- The headline and lead identify the news without hype or ambiguity.
- The five Ws, availability, market, key limits, and CTA are clear.
- Every claim, number, comparison, certification, customer, partner, and quote
  is verified and attributable.
- Quotes add insight and have approval status recorded.
- Tone is objective and third-person outside direct quotes; jargon and acronyms
  are explained only when needed.
- Adjacent sentences and paragraphs do not echo the same ordinary wording,
  opening, or grammatical frame. Necessary names and precise terms remain
  consistent.
- Prose does not rely on dense verb chains, three-part slogans, or repeated
  parallel sentences. Longer sets appear only when materially useful and are
  formatted for scanning.
- Company/product names, titles, dates, links, and boilerplate are consistent.
- Paragraphs are short, important facts come first, and no section is filler.
- Media contact and useful supporting assets are present or flagged.
- Legal, finance, security, privacy, and regulatory claims have the required
  owner review. Do not imply this skill supplies legal approval.

The audit is complete when the central reporting task is supported, every
material finding is repaired or visible as a blocker, and nonessential gaps
remain separate from the ready content. An audit-only request returns findings
and concrete repairs without changing the release.

## Deliverable

For `draft` or `revise`, return:

```markdown
## Press release
[Release text only; keep internal labels out of this block]

## Distribution readiness
- Status: ready for review | provisional | blocked
- News angle:
- Journalist task and walkthrough result:
- Checked sources/facts used:
- Supplied assertions and unverified claims omitted:
- Quote approval:
- Proposed quote for approval, if requested (outside the release):
- Missing facts or approvals:
- Media assets to attach:
- Suggested distribution audience/categories:
- Final checks required:
- Distinctive contribution and evidence packet:
- Packet completeness, pending question, and interview asked/answered counts:
```

Do not call a release wire-ready while placeholders, unapproved proposed quotes,
or material fact/legal reviews remain. Preserve corrected facts during revision
and identify only material changes. Use `blocked` for a central reporting or
mandatory approval gap; use `provisional` for a supported draft with remaining
nonessential checks. The press-release route owns this chat deliverable and
any file the user explicitly requests.
