---
name: seo-guest-post
description: >-
  Plan, write, revise, or audit SaaS guest posts for third-party publications.
  Use for contributed articles, publisher-specific pitches, and sponsored
  guest articles, including requests with a target website and keywords.
  Research the host's readers and editorial rules; verify claims, attribution,
  disclosures, originality, and links. Drafts and revisions also run a
  humanization review and available grammar check. For an article on the
  company's own site, use seo-blog; for a news announcement, use seo-pr.
---

# SaaS Guest Post

Write a contributed article that gives the host publication's readers an
independent reason to read it. The publication controls format and link policy;
the company supplies expertise and verifiable product context. A guest post is
not an owned-site SEO blog with a different byline.

Use [routes.md](references/routes.md) for the requested brief, draft, revision,
or audit output. The steps below apply to every route; complete only the steps
needed for the requested deliverable.

For a new or revised article, run Steps 4-7 in order unless the user explicitly
opts out of a check. Humalizer and Stop Slop are required prose stages when
selected; unavailable required remote instructions block editorial readiness.
Harper is optional when its CLI is unavailable. Keep these checks in the
working article; save a guest-post file only when the user asks.

After the host reader situation is known, run
[`distinctive-content`](../distinctive-content/SKILL.md) in `gate` mode with
the contributor's substantiated practice, decisions, examples, data, product
evidence, and limits. If it returns `interview-needed`, ask one question per
turn, up to 10 total, and resume with `interview`; keep the article blocked until the source is
recorded or the contributor explicitly accepts a `provisional` packet. For an
audit route, use its read-only `audit` branch.

## Shared workflow

### 1. Establish the editorial contract

When a target publication or website is supplied, perform the
[host research](references/host-research.md) yourself, even if the user supplied
no guidelines URL or audience description. Record the host's stated audience,
relevant published coverage, current contributor guidelines, topic and angle,
article length and format, byline, deadline, originality/exclusivity terms,
citation style, link policy, and whether the placement is editorial, partner,
or sponsored. Distinguish checked rules from editorial patterns and unknowns.
If no host is known, use a publication-neutral draft and mark host fit and
submission rules as pending.

Check any verified AI-assisted-writing rule before a draft or revision. If it
forbids the assistance this workflow would provide, stop that writing route;
complete the reader brief in Step 2 and return it with blocked submission
notes instead of a purportedly compliant article. An unknown rule keeps
submission status provisional.

Collect the SaaS product's verified category, user, workflow, capabilities,
limits, and approved positioning. Note the contributor's relationship to the
company and any required disclosure. Separate supplied facts, independently
sourced facts, assumptions, and missing evidence. Ask for a missing fact only
when its absence prevents an accurate article; otherwise continue with a safe
omission or a clearly labeled placeholder.

Record the user's primary keyword and every supplied long-tail phrase verbatim,
when provided. Keep any must-use, avoid/prohibited, count, or placement
instruction with its source so the host's editorial rules can be checked
against it.

This step is complete when the host's guidelines and reader evidence have been
searched and sourced, and the article's audience, purpose, contribution type,
factual boundaries, supplied keyword inventory, and unresolved host
requirements are explicit.

### 2. Establish the reader situation and angle

For a brief or new draft, apply `seo-audience-strategy` in
`single-content brief` mode with the editorial contract, researched host
evidence, supplied keywords, and available product evidence. Use its
host-reader branch to identify a specific situation, trigger, current
knowledge, constraint, question or decision, and likely next question. For a
revision, reuse an existing evidence-labeled reader brief; apply the strategy
when the brief is missing or the audience or angle changes. For an audit-only
route, assess the supplied article's reader situation without creating a new
brief. The strategy returns a stage output;
this skill owns the guest-post brief and submission notes, and saves a file
only when requested.

For brief, draft, and revision routes, adapt the strategy output or reused
brief to the publication with the [reader brief](references/reader-brief.md).
Preserve observed, hypothesis, and unknown labels and the source of each
important insight. Use search phrases only when they help verify or express
the reader's need; a keyword list alone does not establish an angle.

When keywords were supplied on a writing route, apply the
[keyword plan](references/keywords.md) to decide each phrase's role against
the host's readers and rules. Carry the use or omission decision for every
supplied phrase into the guest-post brief or submission notes. On an audit
route, assess each supplied phrase against that plan and report conflicts.

State one thesis relevant to that situation and the work it helps the reader
complete. Identify the contribution that makes the piece worth publishing:
firsthand practice the contributor can substantiate, original data with
methodology, a concrete framework, or a specific example. Choose a structure
that develops the thesis in the reader's question or decision sequence; every
section must add a distinct answer, example, trade-off, or action. Keep the
product's role proportional to what the article teaches and what the publisher
permits.

For a writing route, this step is complete when the outline has a specific,
evidence-labeled reader situation, a clear benefit, a `distinctive-content`
packet with a source owner and limits, and a reason for each section. For an
audit, it is complete when gaps in that contract are recorded as findings.

### 3. Verify claims and draft

Use attributable sources for external facts and cite them near the claims they
support. Product materials can establish product behavior, but they do not
independently prove outcomes or superiority. Verify product capabilities,
limits, integrations, availability, pricing, privacy/security claims, and
customer results. When the product uses AI or the article makes AI-specific
claims, apply the [AI claim checks](references/ai-claims.md). Describe limits
that materially affect the reader's decision. Do not invent trials, customer
stories, expert quotes, statistics, sources, or the contributor's firsthand
experience.

Follow the host's style guide and format while preserving the contributor's
supported voice. Open with the reader's problem or useful finding, then
develop the evidence and practical implications. Attribute the contributor's
point of view honestly. Mention the product only where it supplies a relevant
example or is needed for transparent attribution; follow the host's disclosure
and link rules. Prefer descriptive, useful links to relevant sources. Treat
selected search terms as reader language. Use them where they clarify the
article; follow the host's link rules for any anchor text.

This step is complete when the article delivers its promised insight using the
mapped distinctive material, without unsupported claims or dependence on a
product pitch. Record a proof gap when a section cannot yet carry its planned
contribution.

### 4. Humanize the article

Apply [humalizer](../humalizer/SKILL.md) to the article with the host's rules,
reader brief, supplied keyword decisions, verified sources, byline, and
disclosure as its protected contract. It fetches the pinned Blader instructions
from `https://raw.githubusercontent.com/blader/humanizer/523374dee72d67c7b2b5f858ea0094ffda49c3ac/SKILL.md`
once and returns revised copy plus material changes. Check that it has not
invented firsthand experience, changed claims, altered required phrases or
citations, or overridden the host's voice. This is a prose review, not an
AI-authorship detector or a way around a host's AI-assisted-writing rule.
The stage is complete when the revised article and changes have been checked
against that contract; a failed fetch is recorded as blocked.

### 5. Review directness

Fetch and apply the pinned Stop Slop instructions at
`https://raw.githubusercontent.com/hardikpandya/stop-slop/8da1f030185bdfe8471220585162991eaeb970e9/SKILL.md`
to the revised article. Resolve linked references against that pinned GitHub
Raw directory as needed. Remove remaining formulaic phrasing and repetition
while retaining the host's style, useful nuance, source qualifications, and
the contributor's supported voice. Read the remote instructions for this run
only; do not install or persist them. Record material changes. The stage is
complete when the article has been reviewed against the protected contract;
an unavailable required source is recorded as blocked.

### 6. Check grammar

Apply [harper-grammar](../harper-grammar/SKILL.md) to the English article after
the prose passes. For a chat-only draft, send the article Markdown through
standard input; do not include submission notes or save a temporary article.
Accept only clear corrections that preserve host style, facts, names, quotes,
citations, links, byline, disclosure, and required terms. Record correction and
retained-finding counts. If `harper-cli` or structured output is unavailable,
record a skipped check and continue. The stage is complete when the checked
article or a concrete skip reason is ready for the final audit.

### 7. Run the submission audit

Check the final article after all prose and grammar changes against the host's
guidelines, the reader situation and next question, thesis, distinctive packet
coverage, originality,
evidence, attribution, applicable AI claim checks,
conflicts/disclosures, link rules, and any approved product language. Confirm
that citations resolve to the claimed source and that a supplied draft has not
silently lost its corrected facts. Count article-body words against any host
range; exclude byline, disclosure, and submission notes unless the host says
otherwise. Remove filler, repeated points, and promotional claims that do not
help the reader. Record unresolved requirements outside the article text.

For supplied keywords, compare each planned decision with the final article,
recheck prohibited phrases and user-set placement or counts, and account for
any change in the submission notes or audit findings. Record
the humanization, directness, and grammar results outside the article. A host
rule against AI-assisted submissions is a publication blocker; a prose rewrite
does not make the article compliant with that rule.

The work is complete only when the requested route's deliverable is returned
and every material publication blocker is visible. Save a file only when the
user requests one, at the path they specify.

Draft and revision routes also require submission notes. Call a draft ready for
editorial review only after host rules, evidence, rights/originality,
disclosures, links, and required prose stages have been checked. Do not promise
publication, backlinks, rankings, traffic, or conversions.
