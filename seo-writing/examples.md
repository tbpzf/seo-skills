# Examples

These examples use a fictional product so that no claim is mistaken for a real customer result.

## Example 1: SaaS use-case landing page

### Input

```markdown
Page type: use-case landing page
Target keyword: release notes software for product teams
ICP: product managers at B2B SaaS companies with 20-200 employees
Product: Changelogly collects approved release details from Linear and GitHub,
turns them into an editable draft, and publishes approved notes to a hosted changelog.
It does not publish without a human approval step.
Differentiator: release drafts retain links to the original issue and pull request.
Primary CTA: Start a free trial
Approved proof: none yet
Internal pages: /integrations/linear, /integrations/github, /product/changelog
Voice: direct, calm, technical
```

### Strategy

```markdown
Intent: Commercial investigation
Reader and job to be done: A product manager needs a repeatable way to turn
release work into customer-facing notes without losing engineering context.
Search promise: Explain how Changelogly supports a reviewable release-note workflow.
Information gain: Traceability from a published item to its linked Linear issue and GitHub PR.
Primary CTA: Start a free trial → signup flow
Evidence still needed: an approved customer story or product walkthrough recording.
```

### Output excerpt

```markdown
## SEO metadata
- Title tag: Release Notes Software for Product Teams | Changelogly
- Meta description: Draft, review, and publish release notes from your Linear and
  GitHub work. Keep every update connected to its original engineering context.
- URL slug: /release-notes-software-product-teams
- H1: Release notes software for product teams that keeps engineering in sync

## Draft

### Turn completed work into a release draft

Changelogly brings approved release details from Linear and GitHub into one
editable draft. Product teams can decide what customers need to know, refine
the language, and approve the note before it is published.

### Keep the implementation context close

Each release item can retain a link to its original Linear issue and GitHub
pull request. That gives reviewers a fast way to check scope and gives support
teams a path back to the technical detail when a customer asks a question.

### Review before you publish

Changelogly does not publish release notes automatically. Use the approval step
to confirm the audience, wording, and links before the update reaches your
hosted changelog.

[Start a free trial]

## Internal links and evidence to add
- Linear release workflow → /integrations/linear
- GitHub release workflow → /integrations/github
- Hosted changelog → /product/changelog
- [Add an approved product walkthrough or customer example]
```

Why it works: It matches a commercial task, describes only supplied capabilities,
uses proof as a placeholder rather than inventing it, and keeps every CTA focused
on the free trial.

## Example 2: SaaS educational blog

### Input

```markdown
Page type: educational blog
Topic: how to write better release notes
Audience: product managers who publish release notes inconsistently
Product facts: Changelogly can collect release details from Linear and GitHub,
allow a reviewer to edit the draft, and link each published item to its source.
Primary CTA: Download the release notes checklist
Available evidence: an internal release-note checklist reviewed by the product lead
Internal pages: /templates/release-notes-checklist, /product/changelog
```

### Output excerpt

```markdown
## SEO metadata
- Title tag: How to Write Better Release Notes for Customers
- Meta description: Use a practical release-notes workflow to choose updates,
  add useful context, and publish notes customers can act on.
- URL slug: /blog/how-to-write-better-release-notes
- H1: How to write better release notes customers will actually read

## Draft

Good release notes answer three questions quickly: what changed, who it helps,
and what the reader should do next. Start with the customer-facing impact, then
link to technical detail only when it helps the reader take action.

### 1. Choose updates with a clear customer impact

Do not publish every internal ticket. Select changes that affect a customer
workflow, fix a visible problem, or change a decision they need to make.

### 2. Explain the outcome before the implementation

“You can now save filtered views” is more useful than “We updated the query
layer.” If a technical detail matters, include it after the practical result.

### 3. Make every note reviewable

Use a reviewer who can check the release against the original work and against
the language customers will see. Tools such as Changelogly can keep a draft
linked to its Linear issue or GitHub pull request while the team edits it.

Download the [release notes checklist](/templates/release-notes-checklist) to
review the audience, outcome, action, and source links before publication.
```

Why it works: The article answers the informational query before mentioning the
product, offers a credible workflow, and places the product only at the step
where its supplied capabilities help.

## Example 3: Clarity rewrite

Same facts; language meets the middle-school clarity bar.

### Before (too dense)

```markdown
Our platform empowers product organizations to leverage synergistic release
communication workflows, facilitating the seamless transformation of
engineering artifacts into stakeholder-ready narratives at scale.
```

### After (clear)

```markdown
Changelogly helps product teams turn finished engineering work into release
notes customers can understand.

It pulls approved details from Linear and GitHub into one draft. You edit the
wording, check the links, and publish only after someone on your team approves.
```

Why it works: short sentences, named actors, concrete tools, no empty praise.
The general prose stays near the grade 6–8 target; a PM still gets the job done.

### Before (jargon pile)

```markdown
Utilize our API-first architecture to orchestrate cross-functional alignment
across the SDLC and accelerate time-to-value for enterprise stakeholders.
```

### After (define, then use)

```markdown
Use the API (a way for other apps to send and receive data) to connect your
tools to Changelogly.

Product, engineering, and support can work from the same release draft instead
of copying updates between docs and chat.
```

## Incomplete-input behavior

If a request says only “Write a landing page for our AI analytics platform,”
do not draft a page full of capabilities. Ask for:

1. The audience and target query or use case
2. What the platform actually does, including important limits
3. One desired CTA and the destination
4. Approved proof, integrations, and internal pages

If the user wants an outline immediately, provide the landing-page blueprint
from `reference.md` with `[product fact needed]` and `[proof needed]`
placeholders.

## Example 4: Keyword to topic and content structure

### Input

```text
Mode: plan
Keyword: customer onboarding checklist
Audience: customer success leaders at B2B SaaS companies
```

### Good plan excerpt

```markdown
## Reader intent
- Search intent: Informational; the reader wants a checklist they can use, not
  a history of customer onboarding.
- Reader and current knowledge: A customer success leader who already knows
  what onboarding is and needs a repeatable operating standard.
- Job or decision: Decide what must happen before, during, and after kickoff,
  then assign ownership and define completion signals.
- Expected outcome: A copyable checklist plus criteria for adapting it by
  customer complexity.
- Out of scope: Basic definitions of customer success; product comparisons.

## Topic
- Working title: Customer Onboarding Checklist: Tasks, Owners, and Exit Criteria
- Reader promise: Build a checklist that shows what happens, who owns it, and
  how the team knows each phase is complete.

## Content structure
### Set the onboarding outcome before listing tasks
- Reader question/job: What must the customer achieve by the end of onboarding?
- Key takeaway: Define an observable first-value outcome and deadline before
  choosing calls, emails, or training steps.
- Evidence, example, or artifact: Filled example for a fictional B2B SaaS
  account; `[approved internal example needed]` for publication.

### Copyable onboarding checklist by phase
- Reader question/job: What tasks, owners, inputs, and exit criteria belong in
  pre-kickoff, kickoff, implementation, enablement, and handoff?
- Key takeaway: A checklist is operational only when every task has an owner
  and a completion signal.
- Evidence, example, or artifact: Markdown checklist table.
```

Why it works: it does not waste a customer success leader's time defining
onboarding. It identifies the artifact the query implies and gives each section
a distinct operational job.

## Example 5: Structure to finished content

### Input

```markdown
Mode: draft-from-structure
Audience: experienced customer success leaders
Topic promise: A copyable onboarding checklist with owners and exit criteria
Sections:
1. Define the first-value outcome
2. Checklist by onboarding phase
3. Adapt the checklist by account complexity
4. Handoff and measurement
```

### Expected behavior

- Start with the first decision or a short orientation; do not define customer
  onboarding or explain why checklists are useful.
- Turn Section 2 into a usable checklist table with task, owner, required input,
  and exit criterion columns.
- Give concrete rules for changing the checklist in Section 3; do not say only
  “customize it for your business.”
- Mark unsupported benchmarks or product claims as evidence gaps.
- Keep the supplied order unless intent, facts, or usefulness require a change;
  record any material change in the final audit.
