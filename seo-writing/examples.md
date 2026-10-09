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
Primary CTA: Start a free trial → /signup
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
Product fact source: supplied brief; verify against current product documentation before publication.
Evidence still needed: an approved customer story or product walkthrough recording.
```

### Output excerpt

```markdown
## SEO metadata
- Title tag: Release Notes Software for Product Teams | Changelogly
- Meta description: Draft, review, and publish release notes from your Linear and
  GitHub work. Keep every update connected to its original engineering context.
- URL slug: /release-notes-software-product-teams

## Draft

# Release notes software for product teams that keeps engineering in sync

## Turn completed work into a release draft

Changelogly brings approved release details from Linear and GitHub into one
editable draft. Product teams can decide what customers need to know, refine
the language, and approve the note before it is published.

## Keep the implementation context close

Each release item can retain a link to its original Linear issue and GitHub
pull request. That gives reviewers a fast way to check scope and gives support
teams a path back to the technical detail when a customer asks a question.

## Review before you publish

Changelogly does not publish release notes automatically. Use the approval step
to confirm the audience, wording, and links before the update reaches your
hosted changelog.

[Start a free trial](/signup)

## Editorial audit
- Internal links still to add: Linear release workflow → /integrations/linear;
  GitHub release workflow → /integrations/github; hosted changelog → /product/changelog.
- Evidence gap: Add an approved product walkthrough or customer example.
- Publication blocker: Verify the supplied product claims and signup destination.
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

## Draft

# How to write better release notes customers will actually read

Good release notes answer three questions quickly: what changed, who it helps,
and what the reader should do next. Start with the customer-facing impact, then
link to technical detail only when it helps the reader take action.

## 1. Choose updates with a clear customer impact

Do not publish every internal ticket. Select changes that affect a customer
workflow, fix a visible problem, or change a decision they need to make.

## 2. Explain the outcome before the implementation

“You can now save filtered views” is more useful than “We updated the query
layer.” If a technical detail matters, include it after the practical result.

## 3. Make every note reviewable

Use a reviewer who can check the release against the original work and against
the language customers will see. Tools such as Changelogly can keep a draft
linked to its Linear issue or GitHub pull request while the team edits it.

Download the [release notes checklist](/templates/release-notes-checklist) to
review the audience, outcome, action, and source links before publication.

## Editorial audit
- Product fact source: supplied brief; verify before publication.
- Internal link: checklist destination supplied in the input.
- Publication blocker: Confirm the checklist is approved for distribution.
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
Approved source note (fictional fixture, not a customer case): our workflow
records the first-value outcome and owner before kickoff, checks a sample data
import before training, and hands off after the customer completes the target
task independently. Complex data migrations need a separate validation step.
No measured outcomes or benchmarks are supplied.
```

### Good plan excerpt

```markdown
## Reader intent
- Search intent: Informational; a usable checklist is the proposed answer.
- Query interpretation, inspected intent evidence, alternatives, and uncertainty:
  The supplied query and workflow suggest an operational checklist. No live
  results or customer interviews were checked; actual query expectations remain
  a hypothesis rather than a verified search pattern.
- Expected answer form and reader completion signal: A copyable phase table;
  the reader can assign an owner, input, and completion signal to each task.
- Reader situation and current knowledge (evidence or hypothesis): Hypothesis.
  A customer success leader who already knows what onboarding is and needs a
  repeatable operating standard. Why, when, where, companions, and feelings are
  unknown because no audience research was supplied.
- Trigger, job, or decision: Decide what must happen before, during, and after
  kickoff, then assign ownership and define completion signals.
- Journey stage and next question: Exploration. Next question: which tasks
  belong to which phase, and how the team knows a phase is done.
- Expected outcome: A copyable checklist plus criteria for adapting it by
  customer complexity.
- Constraints and follow-up questions: Use the approved workflow, without
  inventing performance benchmarks. Complex migrations need extra validation.
- Existing coverage and page decision (improve/create/defer/unknown): unknown.
  No existing pages were supplied, so continue this page.
- Out of scope: Basic definitions of customer success; product comparisons.

## Topic
- Working title: Customer Onboarding Checklist: Tasks, Owners, and Exit Criteria
- Reader promise: Build a checklist that shows what happens, who owns it, and
  how the team knows each phase is complete.
- Why this angle is useful: The query asks for a checklist the team can run,
  not a definition of onboarding.
- Information gain and evidence available: Turn the approved workflow into a
  phase table with owner, input, and exit criterion; no outcome proof is claimed.
- Audience evidence sources and validation gaps: Audience role was supplied.
  The specific trigger and customer context are still hypotheses.

## Distinctive contribution
## Distinctive content packet
- Status: ready
- Core contribution: A checklist built around observable completion signals.
- Reader change: Assign tasks and decide when a phase can finish.
- Baseline answer and added value: An ordinary task list names activities;
  this example adds an owner and exit condition so the list can guide handoffs.
- Judgment reasoning, alternatives, and conditions: The supplied workflow
  advances after independent task completion; use exit conditions rather than
  attendance as the handoff rule. An exploratory pilot may instead need a
  narrower learning milestone. This is editorial analysis, not measured proof.
- Source owner and attribution: User-supplied approved workflow fixture.
- Interview: questions asked / answered / remaining: 0 / 0 / 10
- Pending question: none

| ID | Material detail or claim | Type | Source | Evidence status | Limit or approval | Planned use |
| --- | --- | --- | --- | --- | --- | --- |
| D1 | First-value outcome, import validation, independent task completion | practice | Approved input workflow note | supplied | Fictional fixture; no customer result | Phase table and handoff |
| D2 | Complex migrations need extra validation | judgment | Approved input workflow note | supplied | Scope changes with data complexity | Adaptation section |

- Open evidence gaps: optional measured outcomes; omit benchmarks.
- Provisional-use note: none; search interpretation remains a labeled hypothesis.
- Section mapping: D1 supports the table and handoff; D2 supports adaptation;
  introductory guidance supplies necessary orientation without unique evidence.

## Keyword map
- Primary keyword (verbatim): customer onboarding checklist
- Focus keyword for this page: customer onboarding checklist
- Supplied supporting and long-tail keywords (verbatim): none
- User keyword requirements (must-use, avoid, placement, exact-count): none

| Supplied term | Type (primary/supporting/long-tail) | Decision (use/omit) | Reader intent and section role, or omission reason | Planned placement | User-set count (if any) |
| --- | --- | --- | --- | --- | --- |
| customer onboarding checklist | primary | use | Find an operational checklist | Title and H1 | none |

## Content structure
### Set the onboarding outcome before listing tasks
- Reader question/job: What must the customer achieve by the end of onboarding?
- Key takeaway: Define an observable first-value outcome and deadline before
  choosing calls, emails, or training steps.
- Evidence, example, or artifact: An illustrative filled row derived from D1;
  label it fictional rather than a customer case.
- Reader completion check: Define an observable first-value outcome.

### Copyable onboarding checklist by phase
- Reader question/job: What tasks, owners, inputs, and exit criteria belong in
  pre-kickoff, kickoff, implementation, enablement, and handoff?
- Key takeaway: A checklist is operational only when every task has an owner
  and a completion signal.
- Evidence, example, or artifact: Markdown checklist table using D1 and D2.
- Reader completion check: A task can be assigned and checked without guessing
  its required input or finish condition.
```

If the request contains only the original keyword and role, return an incomplete
plan with hypotheses and develop its source packet through accessible research.
If essential private practice is still missing, preserve one source question and
withhold body copy; a proposed phase table is not evidence by itself.

Why it works: it does not waste a customer success leader's time defining
onboarding. It identifies the artifact the query implies and gives each section
a distinct operational job.

## Example 5: Structure to finished content

### Input

```markdown
Mode: draft-from-structure
Saved contract: the complete plan and ready packet from Example 4
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
- Omit unsupported benchmarks or product claims and record gaps in the audit.
- Reuse the saved packet; after editing, attempt to fill and apply the checklist
  as the reader. Missing inputs or exit conditions require repair.
- Keep the supplied order unless intent, facts, or usefulness require a change;
  record any material change in the final audit.

## Example 6: Consumer SaaS keyword handoff

### Input

```text
Mode: plan, then draft-from-structure
Page type: product landing page
Primary keyword: digital photo organizer
Long-tail keywords: photo organizer for computer; organize photos into albums;
automatic Google Drive photo import
Product brief: PhotoNest lets users upload photos from a computer and arrange
them in albums. It does not import photos directly from Google Drive.
Audience: people trying to find photos by album on a computer
Primary CTA: Try PhotoNest -> /signup
```

### Focused audience brief (stage output)

```markdown
- Reader task: Find photos by album on a computer (supplied).
- Trigger: A growing, hard-to-browse photo collection (hypothesis; no customer
  research was supplied).
- Decision criteria: Confirm that computer upload and albums fit the task;
  direct Google Drive import is unavailable (supplied product brief).
- Next question: What happens after upload, and how can albums be organized?
- Intent evidence: The supplied task and keyword suggest product evaluation;
  no live results were checked. Alternative app-comparison intent is out of scope.
- Expected answer and completion: A concrete upload-to-album demonstration;
  the reader can assess computer upload, album organization, and the import limit.
- Existing page coverage: unknown; no site pages were supplied.
- Validation gap: Check real customer questions before treating the trigger as
  an observed pain point.
```

`seo-audience-strategy` returns this brief to `seo-writing`. Its evidence
labels and reader questions enter the Reader intent, Topic, and Content
structure sections of `content-plan.md`; no separate brief file is saved.

### Keyword map excerpt in `content-plan.md`

```markdown
## Keyword map
- Primary keyword (verbatim): digital photo organizer
- Focus keyword for this page: digital photo organizer
- Supplied supporting and long-tail keywords (verbatim): photo organizer for
  computer; organize photos into albums; automatic Google Drive photo import
- User keyword requirements (must-use, avoid, placement, exact-count): none

| Supplied term | Type (primary/supporting/long-tail) | Decision (use/omit) | Reader intent and section role, or omission reason | Planned placement | User-set count (if any) |
| --- | --- | --- | --- | --- | --- |
| digital photo organizer | primary | use | Find and evaluate a product for organizing photos | Title and H1 | none |
| photo organizer for computer | long-tail | use | Check device fit | How it works | none |
| organize photos into albums | long-tail | use | Understand the supported workflow | Album section | none |
| automatic Google Drive photo import | long-tail | omit | Contradicts the supplied product limit | none | none |
```

The draft can use the two relevant long-tail phrases where they help explain
the workflow. Its editorial audit reports actual placement and explains the
omitted phrase. It does not suggest direct Google Drive import or invent a
keyword count.
