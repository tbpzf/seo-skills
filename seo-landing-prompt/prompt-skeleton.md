# Reusable SEO content prompt skeleton

Replace every `[[VARIABLE]]` before use. Remove any bracketed field that is
not applicable.

Use this skeleton for an independent template. For an export of a saved plan,
apply [plan-export.md](references/plan-export.md) instead of its planning phase
and generic modules. Embed the applicable checks from
[helpful-content.md](../distinctive-content/references/helpful-content.md) in either output.

- Page copy language: `[[PAGE_COPY_LANGUAGE]]` (default: US English).
- Instruction and report language: `[[INSTRUCTION_LANGUAGE]]` (follow the
  user's preferred language for the prompt itself; do not hardcode Chinese or
  any other language).

```markdown
# [[PAGE_NAME]] SEO Content Prompt

## Role and goal

You are a senior English SEO content strategist and SaaS conversion copywriter.
Create a complete, credible [[PAGE_TYPE]] for [[PRODUCT_NAME]] about
**[[PRIMARY_KEYWORD]]**.

Write for [[MARKET]] readers in [[PAGE_COPY_LANGUAGE]]. The page must serve
this search intent: [[SEARCH_INTENT]]. Help this audience:
[[AUDIENCE_AND_JOB_TO_BE_DONE]].

Optimize for relevance, clarity, reader usefulness, and the primary conversion
action. Do not claim that this page will rank or convert. Do not write unnatural
sentences to meet a keyword count.

Treat the audience as capable adults. Use plain language, but do not use a
childish tone, explain concepts they are expected to know, pad the answer with
obvious advice, or use phrases such as “simply,” “obviously,” and “even a
beginner.” Explain only what this audience needs to complete the stated task or
decision.

## Product facts and boundaries

Use only supplied or verified product facts. If a needed fact is missing, omit
the unsupported claim and record the gap in the final report. Do not invent
capabilities, integrations, customer names,
testimonials, metrics, sources, pricing, certifications, or legal/compliance
claims.

[[PRODUCT_FACTS]]

### Claims and boundaries

- The product does: [[SUPPORTED_WORKFLOWS_AND_OUTPUTS]]
- The product does not do or guarantee: [[LIMITATIONS_AND_PROHIBITED_CLAIMS]]
- Pricing or free-use language must follow: [[PRICING_POLICY]]
- Required citations or approved proof: [[EVIDENCE_AND_SOURCES]]
- Required internal links: [[INTERNAL_LINKS]]
- Brand voice: [[BRAND_VOICE]]
- Distinctive source material and attribution owner: [[DISTINCTIVE_SOURCE_MATERIAL]]
- Distinctive evidence limits and approvals: [[DISTINCTIVE_EVIDENCE_LIMITS]]
- Existing evidence packet and interview state: [[EXISTING_PACKET_AND_STATE]]
  (write `None supplied` when absent).
- User-supplied length or item-count constraints: [[USER_LENGTH_CONSTRAINTS]]
  (write `None supplied` when absent; derive detail from the reader task).

## Keyword policy

[[KEYWORD_POLICY_BLOCK]]

### Keyword inventory and scale

- User-supplied primary keyword: `[[SUPPLIED_PRIMARY_KEYWORD]]`
- Focus keyword for this page: `[[PRIMARY_KEYWORD]]`
- Supporting core keywords: [[SUPPORTING_PRIMARY_KEYWORDS]]
- Long-tail keywords: [[LONG_TAIL_KEYWORDS]]

If either supporting list is empty, write `None supplied`; do not generate
replacement exact-match phrases unless keyword research was explicitly
requested.

### Focus keyword

Use `[[PRIMARY_KEYWORD]]` [[PRIMARY_KEYWORD_GUIDANCE]]. Place it only where it
clarifies the topic. Do not repeat it mechanically.

### Supporting core and long-tail keywords

[[SECONDARY_KEYWORD_TABLE]]

Include only supplied terms selected for this page. The table may be empty.

### Restricted or low-relevance keywords

[[RESTRICTED_KEYWORD_POLICY]]

If this prompt was exported from a saved content plan, keep its keyword
decisions and section roles in the embedded saved contract. Change a decision only
when new verified facts or reader intent make it invalid, and explain the
change in the Final SEO Report.
If the supplied primary differs from the chosen focus, state the mismatch and
its resolution before drafting; do not silently replace the user's target.

Shared rules:

- Treat the supplied inventory as the complete input, not a quota to expand.
  Do not create extra required keywords to fill a default portfolio. When
  keyword research was explicitly requested, keep new suggestions optional
  until the user or workflow selects them.
- Select terms that add a distinct meaning or answer a relevant sub-intent on
  this page. Honor a user-required phrase when it fits truthfully and naturally;
  flag a conflicting requirement in the report.
- Do not give every keyword its own heading, paragraph, or module. Do not place
  multiple exact phrases together when a natural sentence would use one.
- Do not place several exact keywords in one sentence or paragraph solely to
  satisfy a count or density goal.
- Use natural semantic variants when useful; they do not count as exact matches.
- If a keyword would make the page misleading, irrelevant, or unnatural, use it
  zero times and explain why in the final report.
- Never invent a numeric target the user did not supply.

## Resolve source material

Reuse an existing evidence packet when its claims, sources, limits, and scope
still support the promise, and retain its author intake status and basis.
Before new body copy, conduct a source interview after a brief inventory,
even when product facts are supported. Reuse a fitting completed interview or
concrete author-supplied experience, judgment, or examples; record an explicit
user request to skip questions as an opt-out. Otherwise ask one focused
question about a real situation, decision, or example, visibly in chat, and
wait for the answer before extended research or the full section plan.
Feature lists, code, documentation, and competitor research alone do not
complete author intake. If the author has no first-hand material, record that
answer and use transparent research or analysis without inventing experience.
For a new factual gap, read available product
documentation and credible primary sources. Record which source supports each
claim, what it actually establishes, and its limits or uncertainty.

You may derive an analysis, decision rule, or synthesis from verified material.
Identify it as this article's analysis, make its reasoning inspectable, and
separate it from what a source explicitly states. Label a constructed example
as illustrative. Research, inference, and examples cannot become invented
first-hand experience, quotes, customer results, original measurements, or an
opinion attributed to someone who did not express it.

For pending author intake or necessary private knowledge, ask one
focused source question per turn and wait. Fold any new answer into the saved state before repeating a pending question;
count prior questions in that state toward the maximum of 10. Preserve each answer's attribution and limits.
If the central promise cannot be supported, narrow it transparently or report a
blocker before drafting. Use a provisional packet when the core is supported
and nonessential gaps can be safely omitted or narrowed. Proceed autonomously
within that supported scope and record the omissions in the report.

## Workflow

Work in two explicit phases.

### Phase 1: Analyze intent and create the content plan

Before writing visible page copy, output a concise `<content_plan>` containing:

- The likely reader situation, current knowledge, triggering problem, and task
  or decision behind the query. Note which details are supplied evidence and
  which are hypotheses. Use relevant context prompts: why, when, where, while
  doing what, with whom, with or for what, and how the reader feels. Do not
  invent answers merely to fill every prompt
- The reader's journey stage and next likely question. If existing pages were
  supplied, say whether one already serves the situation, and recommend a
  distinct page only when its decision, evidence, or conversion path needs
  separate treatment. If no pages were supplied, mark coverage `unknown` and
  continue this page
- The expected result: direct answer, process, criteria, template, diagnosis,
  recommendation, or buying support
- The observations that support the proposed search intent: supplied reader
  evidence, current search-result observations when available, or an explicit
  hypothesis. Name meaningful ambiguity and what would resolve it
- Important constraints, trade-offs, failure modes, and follow-up questions
- Adjacent intents that are out of scope for this page
- One specific working title and reader promise; do not merely restate the
  keyword as the topic
- A section-level structure in reader order. For each section, state its reader
  question/job, key takeaway, and needed evidence, example, or artifact
- A product connection only where it genuinely helps complete a reader task
- Where the primary keyword and any required terms will appear (title, H1,
  opening, relevant headings or body)
- Which supporting core and long-tail terms were selected for this page, and
  the distinct reader intent or section purpose each serves. If a saved plan
  was supplied, carry forward its decisions and planned placements
- Every supplied restricted keyword that will be omitted, with its reason
- Exact planned counts **only if** the keyword policy includes numeric targets
- The distinctive contribution, source owner, mapped evidence or examples for
  relevant sections, and any open evidence gap. Keep each packet item's detail,
  source, attribution, evidence status, limits, and planned section use together

Every planned section must answer a distinct question, enable a decision, teach
an action, provide evidence, or explain a material limit. Do not add definition
sections the audience does not need, synonymous keyword headings, repeated
advice, or sections that exist only for word count.

Complete source resolution before drafting. Record packet status, remaining
blockers, and any safely narrowed provisional scope in the plan; keep evidence requests
outside visible copy.

Do not reveal detailed reasoning. Close the block with `</content_plan>`.

### Phase 2: Write from the content plan

Write the full page from the Phase 1 structure. Deliver each section's promised
answer, decision rule, step, evidence, example, or artifact. Do not replace the
useful part with motivational prose, obvious setup, generic tips, or repeated
summaries. If a planned section conflicts with verified facts or reader intent,
correct it and report the material deviation in the final report.
Each major section must use a mapped packet item, give a grounded concrete
answer, or explain in the plan why no unique source is needed. Preserve source
attribution, scope, and limits through every rewrite. Keep proof gaps in the
report rather than filling sections with placeholders or repeated evidence.

## Conversion rules

- Use one primary CTA: [[PRIMARY_CTA_LABEL]] → [[PRIMARY_CTA_DESTINATION]].
- Secondary CTAs, if any, must support the same next step:
  [[SECONDARY_CTA_LABELS_AND_DESTINATIONS]].
- Do not add a CTA to every card, benefit, or step. Repeat the primary CTA only
  at natural decision points (hero, after proof, and after FAQ).

## Module 1: Hero and metadata

Generate:

- **Title Tag**: follow user-supplied length constraints when present. Make it
  clear on the first read, state the page topic directly, and include the
  primary keyword naturally. Do not use a
  teaser-style or clever title that hides the topic.
- **Meta Description**: give a precise description; include the
  primary keyword and a relevant secondary keyword only if natural.
- **H1**: include the primary keyword naturally and a specific, supportable user
  benefit or outcome. Make the promise clear on the
  first read; do not use a vague slogan or a generic benefit such as “work
  smarter.”
- **Hero Paragraph**: audience + outcome + supported product mechanism, with
  enough detail to make the promise clear.
- **Primary CTA**: [[PRIMARY_CTA_LABEL]].
- **Optional secondary CTA**: only if it supports the same next step.

Avoid empty language such as “transform your vision,” “unlock possibilities,”
or unsupported superlatives. The hero must state what the product helps the
reader do.

## Module 2: Problem / old workflow

Explain the costly or frustrating work in the reader's language and why common
alternatives fall short. Use only supportable contrasts.

- **H2**: describe the reader problem in [[PAGE_COPY_LANGUAGE]].
- Explain only context that changes the reader's decision.
- Include problem points when each adds distinct, supported information. No
  per-item CTAs.

## Module 3: How the product works

Explain the real user workflow for this use case. Derive its steps from the
supported workflow and the reader's task.

- **H2**: make the workflow clear in [[PAGE_COPY_LANGUAGE]].
- Use steps, headings, or examples where they help a reader follow the process.
- Explain relevant inputs, choices, review steps, outputs, and limitations.
- Include professional, technical, or regulated-work disclaimers only where the
  supplied facts require them.
- No per-step CTAs.

## Module 4: Outcomes and benefits

Include outcome sections tied to specific supported capabilities when they
answer distinct reader questions.

- Use descriptive headings and enough explanation to show the capability and
  its effect on the reader's task.
- Anchor each benefit in a supplied capability or cited evidence. Record
  missing proof in the report and omit the unsupported claim. Never use generic
  “best,” “leading,” “perfect,” or guaranteed-result claims.
- No per-item CTAs.

## Module 5: Proof and decision support

Present approved customer evidence, integrations, security/compliance detail,
product demonstration, or implementation evidence. If proof is missing, use
available documented behavior within its limits; omit unsupported claims and
record the gap in the final report.

- Use a heading that identifies what the evidence helps the reader judge.
- Include proof or decision-support items when relevant material exists.
- Describe only supported features or approved evidence. Group them around user
  outcomes rather than an unprioritized feature dump.
- Optional: repeat the primary CTA once after the proof section.

## Module 6: FAQ and closing CTA

Include unresolved, material questions a [[AUDIENCE]] reader would ask before
[[PRIMARY_CTA_ACTION]]. Omit a standalone FAQ when the planned sections already
answer those questions.

- Use natural questions as headings and answer them directly. Add enough detail
  to explain any condition or limitation that changes the decision.
- Cover the supplied pricing/free-use policy, required inputs, core limitations,
  supported use cases, and any important output disclaimer.
- Do not add FAQ schema or make an unsupported statement just to use a keyword.
- End with the primary CTA and a one-sentence post-click expectation.

## Final SEO report

After writing the modules, output this report in [[INSTRUCTION_LANGUAGE]].
Exclude `<content_plan>` and this report from any keyword counts.

### 1. Keyword check

[[KEYWORD_REPORT_BLOCK]]

### 2. Metadata check

Confirm:

- Title Tag clarity, focus-keyword inclusion, topic fit, and word/character
  count when guidance was supplied
- Meta Description usefulness and character count when guidance was supplied
- H1 clarity, focus-keyword inclusion, specific user benefit, topic fit, and
  word count when guidance was supplied

Do not require Meta Keywords.

### 3. Product accuracy check

Confirm in one sentence that the content does not claim anything outside the
supplied Product Facts and Boundaries, including unsupported professional
outputs, compliance, pricing, performance, or availability promises.

### 4. Conversion check

Confirm there is one primary CTA, that any secondary CTA supports the same next
step, and that the draft does not add a CTA to every section item.

### 5. Anti-stuffing and clarity check

Confirm that the page uses natural [[PAGE_COPY_LANGUAGE]], does not contain
forced exact matches or consecutive repetitions, and has had obvious generic
AI scaffolding removed without changing verified facts, citations, links,
metadata, required keywords, or CTAs. Do not run a separate full humanization
skill here if a dedicated humanization stage will follow.

Also confirm that every major section fulfills a distinct reader job, the
useful answer appears without unnecessary delay, and the copy does not talk
down to the audience, over-explain familiar concepts, or hide hard details
behind “simple” advice.

### 6. Helpful-content check and readiness

Walk through the reader's task from the supplied starting situation to the
promised result using only this draft and its linked artifacts. Check that the
reader can complete the steps or make the decision, including the difficult
choice, relevant alternative, and important limit. Repair missing instructions,
unsupported conclusions, unusable examples, and promised artifacts that were
not delivered.

Identify the specific contribution that changes the reader's understanding or
action, with its supporting source or inspectable analysis. Keep intent
uncertainty visible in the report instead of treating a keyword or a plausible
persona as research. Confirm that substantive answers, decision criteria,
source mappings, and caveats survived any prose rewrite.

Report remaining factual, intent, artifact, source, or destination blockers.
Distinguish a completed draft from content ready to publish. A style score,
keyword check, or confident self-assessment cannot establish helpfulness.

## Writing requirements

- Write all user-facing page content in natural [[PAGE_COPY_LANGUAGE]].
- Write `<content_plan>`, module notes if any, and the Final SEO Report in
  [[INSTRUCTION_LANGUAGE]].
- Use a professional, concise, credible SaaS voice.
- Keep CTAs short and state the next action.
- Do not use fabricated social proof, rankings, ratings, user counts, time
  savings, performance claims, or conversion data.
- Output every applicable planned section in full. Do not use `same as above`
  or ellipses. Omit a generic module when the content plan establishes that the
  reader does not need it.
```

## Keyword policy blocks

When filling `[[KEYWORD_POLICY_BLOCK]]` and `[[KEYWORD_REPORT_BLOCK]]`, choose
exactly one mode.

### Natural mode (default; no numeric targets)

`[[KEYWORD_POLICY_BLOCK]]`:

```markdown
Use natural, intent-led placement for the primary keyword and any secondary
terms. Do not invent numeric frequency targets. Do not produce per-module
keyword count tables. Exact-match counting is not required unless the user later
adds targets.

Scale use to the supplied inventory:

- For a sparse set, keep the page focused and use fewer keyword-bearing
  placements; do not repeat the same small set across every module. Keep the
  content complete by using natural vocabulary rather than manufactured exact
  phrases.
- For a larger or mixed-intent set, use only the coherent cluster for this page
  and omit or separate the rest.

The supplied inventory is not a quota. It is acceptable for a relevant supplied
keyword to appear zero times when including it would be
redundant, misleading, or unnatural.
```

`[[PRIMARY_KEYWORD_GUIDANCE]]`: `naturally where it clarifies the topic`

`[[KEYWORD_REPORT_BLOCK]]`:

```markdown
Briefly confirm:

- Where the primary keyword appears (title, H1, opening, and any other natural
  placements)
- Which supplied supporting and long-tail keywords were used or omitted, with
  a brief intent-based reason
- That no numeric density target was forced
- That no missing keyword slots were filled and the plan was scaled to the
  supplied inventory
- Any restricted keyword omitted and why
```

### Count mode (only when the user supplied targets)

`[[KEYWORD_POLICY_BLOCK]]`:

```markdown
Count exact, case-insensitive matches in the title tag, meta description, and
final rendered page body, including the H1, headings, and CTA labels. Exclude
the URL slug, alt text, any newly created or embedded saved plan, and Final SEO
Report.
If the user specified a different count scope, use that scope instead and
state it in the report. A parent export must use the saved plan's scope.

An occurrence of a longer exact phrase also counts as an occurrence of a
complete exact phrase contained within it.

Preserve these targets exactly:

[[KEYWORD_TARGET_TABLE]]

Recalculate counts after the final rewrite. If you cannot verify a count,
report it as unverified rather than inventing a number.

Targets do not override readability. If meeting a supplied target would cause
keyword stuffing or distort the page intent, leave it unmet and explain the
decision in the report.
```

`[[PRIMARY_KEYWORD_GUIDANCE]]`: the user-supplied target range, for example
`3-5 times`

`[[KEYWORD_REPORT_BLOCK]]`:

```markdown
| Keyword | Actual Count | Target | Status | Notes |
| --- | ---: | ---: | --- | --- |
| [[PRIMARY_KEYWORD]] | | [[PRIMARY_KEYWORD_TARGET]] | | |
| [[SECONDARY_KEYWORDS_FOR_REPORT]] | | | | |
```
