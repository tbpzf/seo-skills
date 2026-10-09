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
Write news, not an advertisement. Read
[authoritative-guidance.md](references/authoritative-guidance.md) before the
first draft or when auditing format, claims, quotes, multimedia, or search
readiness.

Use [`distinctive-content`](../distinctive-content/SKILL.md) as the shared
source gate. It keeps the announcement anchored in the verified new event,
specific scope, approved evidence, and an attributable quote or explanation;
it can interview the source one question at a time, up to 10 questions, when a
material detail is missing.

## Operating modes

| Mode | Input | Output |
| --- | --- | --- |
| `draft` | Announcement brief and verified facts | Complete release plus readiness audit |
| `revise` | Existing release and corrected facts | Targeted rewrite plus material changes |
| `audit` | Existing release | Findings, blockers, and specific fixes; run the `distinctive-content` audit branch; do not rewrite unless asked |
| `component` | Request for headline, lead, quote draft, boilerplate, or contact block | Requested component with fact/approval labels |

Default to `draft` when the user asks to write a press release.

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

Do not delay a useful first draft when facts can remain labeled placeholders.
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

### 2. Build the fact sheet

Separate facts into:

- **Verified:** supplied directly or supported by a named source
- **Attributable:** approved statement tied to a named person or organization
- **Needs verification:** usable only as `[fact needed]`
- **Prohibited:** confidential, legally restricted, contradicted, or unsupported

For a SaaS launch, explicitly verify product name, target user, problem solved,
actual workflow, launch/availability date, supported plans or markets, pricing
language, limits, security/compliance claims, integrations, and CTA destination.

Run `distinctive-content` in `gate` mode after this fact sheet. Pass the new
event, what changed in practice, verified scope, methodology, approved quote,
customer evidence, and material limits. If it returns `interview-needed`, ask
one question per turn, up to 10 total, and resume with `interview`; keep the release blocked or
provisional until the answer is recorded. A routine update cannot be made
distinctive by adding adjectives.
For `audit`, run its `distinctive-content` audit branch against the existing
release and return findings without rewriting it. For `revise`, reuse the
packet when its sources and announcement still fit; refresh it when they do
not.

### 3. Choose one angle and audience

Select one primary news angle and the journalists/readers who care about it.
State why it matters in concrete operational, market, or customer terms. Do not
combine several unrelated announcements or optimize the release around a list
of SEO keywords.

### 4. Draft in inverted-pyramid order

Use this default US wire structure:

```markdown
FOR IMMEDIATE RELEASE

# [Specific headline naming the company/product and news]

*[Optional subhead adding verified significance, availability, or audience]*

**CITY, State, Month Day, Year** — [Lead with who, what, when, where, and why.]

[Most important supporting facts and SaaS availability details.]

[Approved evidence, product workflow, customer impact, or market context.]

"[Approved quote or clearly labeled proposed quote]," said [Name], [title] at
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

Verify:

- The event is genuinely new, specific, timely, and relevant outside the company.
- The distinctive-content packet names the reader change, source owner, evidence
  limits, and any interview or approval still required.
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

## Deliverable

For `draft` or `revise`, return:

```markdown
## Press release
[Release text only; keep internal labels out of this block]

## Distribution readiness
- Status: ready for review | blocked
- News angle:
- Verified sources/facts used:
- Quote approval:
- Missing facts or approvals:
- Media assets to attach:
- Suggested distribution audience/categories:
- Final checks required:
- Distinctive contribution and evidence packet:
```

Do not call a release wire-ready while placeholders, unapproved proposed quotes,
or material fact/legal reviews remain. Preserve corrected facts during revision
and identify only material changes.
