# Research basis and writing blueprints

## Source hierarchy

Use primary product documentation, first-party research, customer-approved case studies, and reputable original reporting before secondary summaries. Link to the claim's source; do not cite a source that does not substantiate the statement.

### Google: quality constraints

[Creating helpful, reliable, people-first content](https://developers.google.com/search/docs/fundamentals/creating-helpful-content) is the primary baseline:

- Create content for an existing audience and their task, not merely to attract search traffic.
- Add original information, analysis, or substantial value beyond a rewrite of other sources.
- Make expertise, author identity, and sources visible where readers reasonably expect them.
- E-E-A-T is a useful self-assessment lens, not a single ranking factor or checklist that guarantees results.
- Google explicitly rejects fixed word-count targets as a route to better rankings.

[Google's AI-content guidance](https://developers.google.com/search/blog/2023/02/google-search-and-ai-content) says quality and usefulness matter more than how content was produced. AI-assisted content still needs accuracy, originality, and responsible human review.

### Industry practices, not Google requirements

These are public explanations from established SaaS publishers. Use their principles as hypotheses to adapt, not as guaranteed ranking methods.

- [Ahrefs: combining SEO and content marketing](https://ahrefs.com/blog/seo-content-marketing/) advocates selecting topics with search and business potential, matching intent, naturally connecting product value, and maintaining content over time.
- [Ahrefs: topical authority](https://ahrefs.com/blog/topical-authority/) explains topic clusters and helpful internal linking as a way to organize related coverage.
- [Webflow: landing page SEO](https://webflow.com/blog/seo-landing-page) emphasizes a single query/use case, a focused page promise, useful internal links, descriptive metadata, and a clear next step.
- [Semrush: SaaS SEO](https://www.semrush.com/blog/saas-seo/) maps informational, commercial, and transactional queries to buyer-journey content; it also recommends practical examples and natural product relevance.

## Plain language and middle-school clarity

Write for a *busy adult* using general prose near a grade 6–8 reading level. Plain language is not dumbing down; experts prefer it when they are scanning ([NN/g: plain language is for everyone, even experts](https://www.nngroup.com/articles/plain-language-experts/)).

### Standards to follow

| Source | What to borrow |
| --- | --- |
| [NN/g: concise, scannable, objective](https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/) | Short copy, scannable headings/lists, objective tone (not marketese). Combined style raised measured usability sharply in their study. |
| [NN/g: how users read on the web](https://www.nngroup.com/articles/how-users-read-on-the-web/) | One idea per paragraph; inverted pyramid; meaningful subheads; half the word count of print-style prose. |
| [GOV.UK: clear language](https://guidance.publishing.service.gov.uk/writing-to-gov-uk-standards/writing-guidelines/clear-language/) | Short words, active voice, paragraphs ≤5 sentences, split sentences over ~25 words; plain English is mandatory for public content. |
| [Center for Plain Language: readability](https://centerforplainlanguage.org/what-is-readability/) | Aim near everyday reading ease; WCAG-aligned guidance favors text that does not require more than lower-secondary education. |
| [Australian Style Manual: plain language](https://www.stylemanual.gov.au/writing-and-designing-content/clear-language-and-writing-style/plain-language-and-word-choice) | Prefer short alternatives (buy/get vs acquire; help vs assist; about vs approximately). |

Target general web prose at roughly **grade 6–8**. Treat sentence length and readability scores as prompts for review, not pass/fail gates or ranking proxies. Keep terms familiar to the ICP, even when a formula rates them as difficult. Define only terms the intended reader may not know.

### Textbook-style teaching patterns

Borrow how good middle-school explainers teach (science/history essays, BBC Bitesize–style pages, clear textbook paragraphs)—not the school topic itself:

1. **Name the thing** in one plain sentence before details.
2. **Show one concrete example** (a person + a task + a result) before abstractions.
3. **Define new terms** the first time they appear, then reuse the short term.
4. **Use numbered steps** for procedures; bullets for unordered lists of options.
5. **End a section with what to do next**, not a summary that repeats the section.

### Model SEO / product pages (study the *style*, do not copy)

These publishers are useful clarity references for English SaaS SEO. Emulate structure and plain wording; never lift phrasing or claim their results.

| Model | Why it is a good clarity reference |
| --- | --- |
| [Ahrefs: SEO copywriting](https://ahrefs.com/blog/seo-copywriting/) | Simple language pass; edit with Hemingway-style checks; write how you speak. |
| [Ahrefs: website content](https://ahrefs.com/blog/website-content/) | ASMR-style editing: annotations, short sentences and paragraphs, multimedia, and reading copy aloud. |
| [Backlinko: write a blog post](https://backlinko.com/write-a-blog-post/) | Scannable listicles, specific subheads, chunked answers that stand alone. |
| [Backlinko: SEO copywriting](https://backlinko.com/seo-copywriting/) | Explains jargon in plain English while staying useful to practitioners. |
| [Webflow: landing page SEO](https://webflow.com/blog/seo-landing-page) | One promise per page; clear next step; descriptive metadata. |

### Common swaps

| Prefer | Instead of |
| --- | --- |
| use | utilize, leverage |
| help | facilitate, enable (when vague) |
| show / explain | demonstrate, showcase |
| start / begin | commence, initiate |
| fix / solve | remediate, address the issue |
| about | approximately, regarding |
| need | require (when “need” is accurate) |
| buy / get | purchase, acquire |
| now / next | subsequently, going forward |

Keep a longer Latinate word when it is the precise product or legal term the ICP expects. Gloss it only when the intended reader may not know it.

## Evidence inventory

Before drafting, label available material:

| Evidence type | Safe use |
| --- | --- |
| Product documentation or live demo | Describe supported behavior and flows accurately |
| Approved customer case study | Cite the customer, context, and result exactly as approved |
| Original benchmark or research | State methodology, date, scope, and a link |
| SME interview or review | Attribute the person's expertise and distinguish opinion from fact |
| Product screenshot or recording | Explain what it visibly demonstrates; include accurate alt text |
| Competitor/SERP observation | Use only to understand intent or gaps; do not copy language or present it as product evidence |

If proof is unavailable, use a clearly labeled placeholder such as `[add approved customer example]`. Do not convert a product capability into a quantified business result without evidence.

## SaaS landing-page blueprint

Use this for one product capability, user role, industry, or use case. It is a composition guide, not a mandatory word-count template.

1. **Hero** — who it is for, the meaningful outcome, how the product contributes, primary CTA. Write the hero in plain sentences a first-time visitor can scan in under 10 seconds.
2. **Problem / old workflow** — name the costly or frustrating work in the reader's everyday language (not buzzwords).
3. **Solution mechanics** — show how the product works, with a demo, documentation, or screenshot. One step = one short paragraph or list item.
4. **Outcome sections** — one customer-relevant benefit per section, anchored in a concrete capability.
5. **Proof** — case study, review, security/compliance detail, integration, or implementation evidence.
6. **Decision support** — implementation detail, limitations, FAQs, pricing route, or relevant alternatives.
7. **CTA** — repeat the same action and clarify what happens next.

Useful internal links: related use cases, feature documentation, integrations, pricing, implementation/security, customer stories, and a relevant educational guide.

## Educational SaaS blog blueprint

Use this for a question or a repeatable job. The reader should gain an answer even if they never click the CTA.

1. **Opening answer** — answer the query or define the concept with general prose near the grade 6–8 target.
2. **Context** — explain who needs this and when it matters, with one concrete scenario.
3. **Method or framework** — offer ordered, actionable steps; one action per step.
4. **Examples and evidence** — prefer first-hand examples, product walkthroughs, cited data, or practitioner insights.
5. **Common mistakes or trade-offs** — help readers choose or adapt the method.
6. **Product connection** — demonstrate one relevant workflow; do not treat the product as the only possible answer.
7. **Next step** — point to an appropriate template, demo, documentation page, or related guide.

Useful internal links: a pillar guide, a narrower tutorial, product documentation, a template/tool, and a use-case page.

## Research notes

- Match the dominant query intent and result format, but add information gain rather than copying the current top results.
- Re-check the SERP and product truth when refreshing content; intent, features, screenshots, pricing, and evidence can change.
- Favor a small number of well-supported claims over broad claims that the business cannot verify.
