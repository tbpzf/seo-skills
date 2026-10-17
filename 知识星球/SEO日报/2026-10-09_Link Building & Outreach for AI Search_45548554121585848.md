---
title: "Link Building & Outreach for AI Search"
topic_id: "45548554121585848"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-09T00:13:40.187+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#", "#Tips#"]
original_urls: ["https://dejan.ai/blog/outreach/"]
---

# Link Building & Outreach for AI Search

- 发布时间：2026-10-09T00:13:40.187+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/45548554121585848)
- 标签：#SEO##Tips#

## 星球正文

Link Building & Outreach for AI Search

DEJAN 的作者讲外联(outreach)换来的链接为什么大多白费:问题不在对方站的 DA、DR 够不够高,而在链接放得"不协调"。有经验的作者在哪里放链接,其实有很稳定的规律,模型能学出来;不符合规律的那条付费链,人和算法都一眼能看出是谁想要的。

要点：
1. 作者用大量自然链接和非自然链接的样本训练了一个模型,给它一段纯文本,它能预测真人作者会在哪些词上放链接。拿一位资深博主的文章测试,在 93% 置信度阈值下,模型预测的位置和作者真实放的链接基本对得上(作者自述)。
2. 行业流行的"1 + 2"套路(一条商业链 + 几条权威链,"让它看起来自然")反而是可识别的模式。作者举例:有发布方收 150 美元编辑费,规定只能有 1 条商业链、外加 1-3 条新闻或政府类权威链。而作者称,自然内容一页常有 10-20 条链接,博客网络每篇只有 2-3 条。
3. 让链接像编辑自己加的,有四条规则:多链(该链的都链,包括和你无关的外站,链接密度跟宿主站平时一样);每条链接都有明确用途(出处、定义、举例、证据等 10 种,商业推广也算一种,但要过同样的关);链到这个位置最好的那一页;锚文本贴合宿主站平时的写法,不硬塞目标关键词。
4. 自检办法:把稿子给另一个 SEO 看,让他猜"这页上是谁想要这条链接"。猜中了,就说明放得还不够自然。作者自家的流程是让 AI 红队写稿放链、蓝队(付费链检测器)找链,被找出来的稿子直接作废。

结论：内容先行,链接是为内容服务的;一旦"放链接"变成写这篇文章的主要目的,内容就会变成陪衬,链接也就暴露了。

原文：[https://dejan.ai/blog/outreach/](<https://dejan.ai/blog/outreach/>)

## 外部原文

### 原文 1

- 来源：<https://dejan.ai/blog/outreach/>
- 抓取时间：2026-10-17T02:39:12.452562+00:00
- 状态：已获取原文页面

---
canonical: https://dejan.ai/blog/outreach/
meta-description: Natural linking follows predictable human patterns that deep learning models and search algorithms easily detect, exposing inorganic link building efforts.
meta-og:description: Natural linking follows predictable human patterns that deep learning models and search algorithms easily detect, exposing inorganic link building efforts.
meta-og:image: https://dejan.ai/og/post/outreach.jpg
meta-og:image:alt: Link Building & Outreach for AI Search
meta-og:image:height: 630
meta-og:image:width: 1200
meta-og:site_name: DEJAN
meta-og:title: Link Building & Outreach for AI Search
meta-og:type: article
meta-og:url: https://dejan.ai/blog/outreach/
meta-twitter:card: summary_large_image
meta-twitter:description: Natural linking follows predictable human patterns that deep learning models and search algorithms easily detect, exposing inorganic link building efforts.
meta-twitter:image: https://dejan.ai/og/post/outreach.jpg
meta-twitter:title: Link Building & Outreach for AI Search
meta-viewport: width=device-width, initial-scale=1
title: Link Building &amp; Outreach for AI Search
---

[← back](https://dejan.ai/)

![Link Building & Outreach for AI Search](https://dejan.ai/media/header/posts/outreach-6638daa5.png)

# Link Building & Outreach for AI Search

[![](https://lh3.googleusercontent.com/a/ACg8ocIzPbX1yzNoZGisEyNHQT2qdNnPceJVlyoTQ1N2MGmg9fO-sR1t3A=s96-c)Dan Petrovic](https://dejan.ai/u/5) ·
06 October 2026

Natural linking follows predictable human patterns that deep learning models and search algorithms easily detect, exposing inorganic link building efforts.

![](https://dejan.ai/media/images/misc/arrow-marker-left.svg)

markdown_copyCopy Article

Large language models are expensive to train.

A typical commercial model is already

**months out of date**

**Knowledge Cutoff** is the date after which a language model has no built-in knowledge, because its [training data](https://dejan.ai/concepts/training-data/) stops there. Anything later is unknown to the model unless it is supplied at request time, so from memory alone a model cannot reliably answer questions about events, prices, or releases past that point.

The cutoff is a property of the trained weights, distinct from the current date. A model can know today's date and still hold a world frozen months or years earlier. This is the gap that [grounding](https://dejan.ai/concepts/grounding/) and [retrieval-augmented generation](https://dejan.ai/concepts/retrieval-augmented-generation/) exist to close: when a question turns on recent facts, the system runs a live search and answers from retrieved pages rather than from its stale prior. Asked about recent events without retrieval, a model is prone to [hallucinate](https://dejan.ai/concepts/hallucination/) a plausible but wrong answer.

For AI visibility the cutoff is why [fresh, current content](https://dejan.ai/concepts/content-freshness/) earns a place in answers a model cannot produce from memory. A brand, product, or fact that postdates the cutoff exists for the model only through what it can retrieve, which puts a premium on being crawlable and citable at the moment the question is asked.

on its very release date and the

**knowledge it comes with**

**Parametric Memory** is the knowledge a model holds in its own weights, learned during [pre-training](https://dejan.ai/concepts/pre-training/) and recalled in a single forward pass with no lookup and no retrieval. Lewis et al. named it in the 2020 RAG paper to separate it from non-parametric memory, the external index a system searches at request time and loads into the [context window](https://dejan.ai/concepts/context-window/).

## Where the knowledge sits

Facts are spread across the weights rather than held in addressable records. Geva et al. (2021) showed that the feed-forward layers of a transformer work as key-value memories: each key pattern responds to a class of inputs, and the paired value shifts the output distribution toward particular [tokens](https://dejan.ai/concepts/token/). [Mechanistic interpretability](https://dejan.ai/concepts/mechanistic-interpretability/) work such as ROME (Meng et al., 2022) traces a single factual association to a small set of middle-layer MLP weights and rewrites it there, which shows the storage is localised enough to change one fact at a time.

## How much fits

Allen-Zhu and Li (2024) measured knowledge capacity at about 2 bits per parameter when each fact appears around 1,000 times in training, falling to about 1 bit per parameter at 100 exposures. At the 2-bit figure a 7-billion-parameter model holds roughly 14 billion bits, near 1.75 GB, of factual content. Exposure count is the binding constraint: a fact seen a few times in the [training data](https://dejan.ai/concepts/training-data/) is encoded weakly or not at all, while one repeated across many sources is recalled reliably.

## Frozen at the cutoff

Parametric memory is fixed when training stops, which is what the [knowledge cutoff](https://dejan.ai/concepts/knowledge-cutoff/) describes. Changing it takes [fine-tuning](https://dejan.ai/concepts/fine-tuning/), a further pre-training run, or targeted weight editing, and none of those run per query. Anything later reaches the model only through [grounding](https://dejan.ai/concepts/grounding/) or [retrieval-augmented generation](https://dejan.ai/concepts/retrieval-augmented-generation/), which supply text at [inference](https://dejan.ai/concepts/inference/) and leave the weights untouched.

## Failure mode

A query that lands on a weakly encoded fact still returns fluent text, because generation samples the most probable continuation whether or not the knowledge is present. That is the mechanism behind [hallucination](https://dejan.ai/concepts/hallucination/): the weights carry no separate signal for "this was never stored".

## Parametric memory and AI visibility

A brand that appears widely and consistently across the training corpus is answered from parametric memory, with no retrieval step and no citation attached. A brand that does not exists for the model only when it can be retrieved, which puts the weight on crawlability and [freshness](https://dejan.ai/concepts/content-freshness/). The two paths produce different results in an AI answer: parametric recall returns a claim with no link back to a source, while retrieved content can be cited.

## Related concepts

- [Pre-training](https://dejan.ai/concepts/pre-training/)
- [Training Data](https://dejan.ai/concepts/training-data/)
- [Knowledge Cutoff](https://dejan.ai/concepts/knowledge-cutoff/)
- [Retrieval-Augmented Generation](https://dejan.ai/concepts/retrieval-augmented-generation/)
- [Grounding](https://dejan.ai/concepts/grounding/)
- [Hallucination](https://dejan.ai/concepts/hallucination/)
- [Fine-tuning](https://dejan.ai/concepts/fine-tuning/)
- [Mechanistic Interpretability](https://dejan.ai/concepts/mechanistic-interpretability/)

is fuzzy at best. Retrieval remains the dynamic memory layer of all AI assistants and the most significant type is

**grounding with organic search**

**Web search grounding** is the process where an AI model answers a fact-seeking question not from memory but by running its own web search, reading what comes back, and weaving some of those pages into its reply. It's the umbrella term for how Google, OpenAI and Anthropic pull live sources into generated answers.

Under the hood every platform runs the same funnel: a search returns pages *received*, a subset have *readable* content, and a smaller subset get *cited* in the answer. The gap between received and cited is where each platform's personality shows. In our head-to-head test on a single query, Google received 7 pages and cited all 7, OpenAI received 39 and cited just 2, and Anthropic received 14 and cited 9.

For AI visibility this is the whole game: your page has to survive the funnel — get retrieved, be readable, and earn the citation. It works through [grounding chunks](https://dejan.ai/concepts/grounding-chunk/) and the [grounding snippet](https://dejan.ai/concepts/grounding-snippet/), and it is distinct from [document grounding](https://dejan.ai/concepts/document-grounding/), where you hand the model a specific URL.

## Related concepts

- [Grounding](https://dejan.ai/concepts/grounding/)
- [Grounding Chunk](https://dejan.ai/concepts/grounding-chunk/)
- [Document Grounding](https://dejan.ai/concepts/document-grounding/)
- [Number of Citations](https://dejan.ai/concepts/number-of-citations/)

. This means that

**AI visibility and organic search**

[memory-grounding]

have a very strong link. Strong links. Nice. Let's talk about that now.

SEOs and link builders strategize and debate various angles and nuances of outreach methods, build outreach databases and systems, they look at metrics (DAPA DRAPA...) good links are being refused because they don't meet a number made up by a SaaS company that has nothing to do with Google's link authority and approximates it at best. Hell,

**we've got one**

AI Brand Authority Index: Ranking 2.9 Million Brands by Associative Embeddedness in Gemini’s Memory

This research presents a methodology for quantifying brand authority in large language model memory using Personalized PageRank and directed association graphs.

[Read Full](https://dejan.ai/blog/brands/)

too!

So all this work and thinking goes into it and then we ruin it at the end with one simple thing that happens almost every single time.

![](https://dejan.ai/media/images/posts/outreach-4.png)

## Incongruence.

Show me any of your outreach based links, articles, posts and such and I will be able to tell you who wanted the link on that page.

1. I will be able to tell
2. Any experienced SEO or link builder will be able to tell
3. Google's web spam team will be able to tell
4. Google's models and algorithms will be able to tell

This problem of poor link integration has plagued the industry for two decades now and the same is happening with inorganic mentions in the age of AI search. So much time, energy and money going to waste.
> ![Aleyda Solis smiles wearing glasses and a dog-patterned shirt against a colorful gradient background.](https://dejan.ai/media/images/posts/outreach-1.jpg)Dan shares how natural linking follows predictable human patterns that deep learning models and search algorithms easily detect, exposing inorganic link building efforts.[  
> Aleyda Solis](https://seofomo.co/posts/the-top-ai-search-seo-updates-of-the-week-seofomo-oct-11-2026)

Have a quick play with the following data visualisation to lock in on one important context. As people read a piece of content, they'll feel varying degrees of desire for a link:

[link-desire]

Knowing *where* to place links is a skill that refines with time and most senior journalists and bloggers don't even think about it. What do you call that?

**Intuition.**

All experienced web authors link out to other pages in almost identical ways. It's as if there's an optimal way that links should be and millions of experienced web authors do it in the same or very similar way. Linking habits as a stable and predictable element of human behaviour.

I've collected gigabytes of data and billions of tokens worth of link patterns in both organic and inorganic link patterns. I've then trained a deep learning model on these user behaviour signals and now have **a model that can predict user behaviour**. When I show it plain text, it simply knows where the human will place the links on it. It's a model with human-level intuition for natural link integration.

Let's zoom in from abstract to precise now. Here's our [link analysis](https://app.dejan.ai/property/43?tab=content_optimizer&sub=link_optimizer&lo_run=29) of Mike's chunking article. Mike is a domain expert with many years of blogging experience. Can you guess which spans of text are his links?
> Back in 2011 when I first started writing SEO blog posts for Moz, despite their popularity I was writing walls of text because that was my nature. Then-CMO Jamie Steven instructed me to read Cyrus Shepard’s 10 Super Easy SEO Copywriting Tips for Improved Link Building for direction on how I should structure what I write for better performance. In the article, Cyrus comes out swinging showing this visual comparison of a wall of text versus a very well-structured piece of content with lots of formatting and imagery. Using data to drive the point home, he shows how the two posts (by the same great internet marketer) had dramatically different performance, with 62X the external link capture and nearly 4X the time on page. I was hooked and those insights have stuck with me ever since. In fact, you can trace back elements of anything I’ve written over the last 14 years to the formatting lessons of that classic post. I’d go as far as to say I think more about these principles than I do so-called SEO “best practices.” Part of why what Cyrus outlined resonated with me so much is that the principles just make sense. Conceptually, it all harkens back to everything we all learned about how humans interact with information when we read “Don’t Make Me Think.” Over time, I’ve seen the specificity and better content UX highlighted yield better performance on any human-driven metric we measure as well as more visibility search engines and large language models. But…Google Says Don’t Break Your Content Into Bite-Sized Chunks Recently, on the Search Off the Radar podcast , Danny Sullivan shared his opinion on “chunking” as a tactic to drive visibility in AI Search surfaces (emphasis mine).

Here's our model's predictions at 93% confidence threshold:

![](https://dejan.ai/media/images/posts/outreach-1.png)

And here are Mike's actual links:

![](https://dejan.ai/media/images/posts/outreach-2.png)

Oh, I'm getting goosebumps. It's as if it read Mike's mind!

### **Our deep learning model can tell organic and inorganic links apart and so can Google's. Forget about DAs and PAs. Poor link integration is what kills all value of your outreach efforts.**

Sure. It's not always perfect. Sometimes the model will miss a link prediction (e.g. *there is a pairwise determination*) and sometimes it will flag something that should be a link, but isn't (e.g. *BubbaChunk*), see below.

![](https://dejan.ai/media/images/posts/outreach-3.png)

Why am I showing you all this? I'm reinforcing a notion that there's a natural order of things on the web and everything falls into a pattern. Links included. Google's web spam and search quality algorithms and language models are literally designed for pattern matching.

### **Inorganic links and mentions get caught when they sit where no reader wanted or expected them. Experienced writers place links by instinct, in patterns stable enough for a model to predict, and links and mentions that break those patterns stand out to both algorithms and human reviewers.**

Now here's a real curveball.

Let's pick someone with two decades of blogging experience and thousands of blog posts, someone whose links are completely natural and effortless, a second nature. Seth Godin. Pay him $10,000 and ask to write a piece with a link to your page. I almost guarantee you he would fail at his usual natural link integration and so would most of you who are reading this. Why?

### **Because as soon as your link becomes the primary goal, the content becomes secondary. Links should be there in support of content, not the other way around.**

So you're reading this and thinking, I can do better, I can be clever about this. I can integrate my links so they fit the content perfectly. But see, the SEO industry has already poisoned the web content community with the **1 + 2 rule**. One money link plus a couple of authority links to '**make it look natural'.** Here's my experience with a brainwashed publisher. These guys charge a $150 editorial fee, with the following requirements:
> Only **one commercial link** is allowed. It should look natural and not spammy. No adult and gambling sites! Include **1-3 Authority links** to well-ranked news, government or similar sites.

Ironically the 1 + 2, works against the very thing it asks for. It:

1. Makes the post look **less** natural.
2. Aids algorithmic **detection**.
3. Provides a **pattern** for manual actions.
4. Creates a **negative** user experience.
5. Encourages **poor** link integration.

Fun Fact: Organic content often contains 10-20 links on a page, while classic blog networks tend to be quite stingy with 2-3 links per post.

## Four rules for links that read as editorial

### Liberal linking

Link to every page that helps the reader, on every relevant domain, including domains you have no stake in. This is the habit the 1 + 2 formula breaks.

| Signal       | Question to ask                                                                    |
| ------------ | ---------------------------------------------------------------------------------- |
| Coverage     | Does the page link to the sources, terms and entities a reader may want to follow? |
| Openness     | Does it link to other domains as readily as to its own?                            |
| Consistency  | Does its link density match the host site's editorial posts?                       |
| Independence | Would the links still be there if no link had been paid for?                       |
| Blend        | Does any single link stand out from the rest?                                      |

### Purpose

Every link must have a strong purpose. There are ten: attribution, reference, definition, expansion, identification, example, action, relationship, proof and promotion. Yes, promotion is on the list. A commercial link is fine when it passes the same test as every other link on the page.

| Purpose        | What the link does for the reader                               |
| -------------- | --------------------------------------------------------------- |
| Attribution    | Credits the person or outlet behind a quote, image or idea      |
| Reference      | Points to the source of a fact or figure                        |
| Definition     | Explains a term the reader may not know                         |
| Expansion      | Gives more depth on a point the text only touches               |
| Identification | Shows exactly which person, company, product or place is meant  |
| Example        | Shows an instance of what the text describes                    |
| Action         | Lets the reader do something, such as buy, sign up or download  |
| Relationship   | Connects the subject to a related person, organisation or story |
| Proof          | Backs a claim with evidence                                     |
| Promotion      | Points to something the publisher or a partner wants to promote |

### Primacy

A link must lead to the strongest possible page for that spot, judged by logic, situation, narrative, utility and relevance. If a better page exists for the anchor, the link is in the wrong place.

| Test      | Question to ask                                   |
| --------- | ------------------------------------------------- |
| Logic     | Is this the page the anchor text promises?        |
| Situation | Does it suit what the reader needs at this point? |
| Narrative | Does it continue the story the article tells?     |
| Utility   | Is it the most useful page on the subject?        |
| Relevance | Does it match the sentence the link sits in?      |

### Natural anchor text

If your anchor text fits the natural pattern of existing anchor text on that site, your link will be near impossible to devalue or penalise.

| Signal        | Question to ask                                                    |
| ------------- | ------------------------------------------------------------------ |
| Pattern fit   | Does the anchor match how the host site phrases its own links?     |
| Plain wording | Does it describe the source or the action, with no target keyword? |
| Grammar       | Does it read as a natural part of the sentence?                    |
| Rarity        | Is the exact phrase uncommon, like most anchors in the long tail?  |
| Click point   | Does it sit on the words a reader would expect to click?           |

## Content first, links second

The better the content, the less link-building effort it needs. Step zero is to create value: if there's nothing worth linking to, no linking technique will fix that. Then:

1. As a starting point, focus on content.
2. Consider all that is of value and where it lives.
3. Write and link out generously to the best pages, on all relevant domains and in tune with your readers' expectations.

## Placement

The principles above still fail when one line in the text exists only to carry a link. That single line in the wrong place is enough to expose the link.

As a reader moves through a text, their desire for a link rises and falls. It peaks where the text names a source, makes a claim or mentions something the reader may want to look up. A natural link sits at one of those peaks.

How many peaks get a link depends on the threshold. Linking only the absolute essentials gives the fewest links, a conservative threshold gives more, and a liberal threshold gives the most.

Take a client link placed in a story that gives the reader no reason to want it. Even if the story did call for a link at that point, the client's page would not be the strongest target. This is the links-as-an-afterthought pattern, where content is written to carry a link.

**WARNING:** The above is much easier said than done, and you only realise that once you sit down and try to do it yourself. There's this psychological phenomenon that drives people to claim that their link integration is "good enough" because they just put work into it and don't feel like doing more of it. The only way to fix this is to ask another SEO the following:

**Who wanted the link/mention on this page?**

If they can guess your link correctly, then it's not good enough.

## Inorganic Link Detection

Some websites (you know

**the type**

![](<https://dejan.ai/blog/outreach/>)![](https://dejan.ai/media/images/posts/outreach-5.png)

) make it trivially easy to detect inorganic placements with severe topical incongruence and obvious link integration. But there are many sophisticated methods which are easy to miss by a human but a perfect job for a machine. Here's my paid link detection algorithm in action:

![Hawkward...](https://dejan.ai/media/images/posts/outreach-7.png)

Now, algorithms get things wrong all the time so I shall pass no judgement here and leave the final verdict [to you](https://app.dejan.ai/property/43?tab=content_optimizer&sub=link_optimizer&lo_run=32), the reader. But the point I'm making is that if our algorithm can detect this type of thing, then so can Google's, and for this reason most outreach-based links are ignored, or treated as a small negative signal.

**Update:** The agency Chief of Staff, Lawrence Hitches, has reached out to us to clarify that this was a completely natural link and that our algorithm got it wrong. Our audit of this false positive reveals the underlying reasons this link was flagged by our algorithm.

The flagged outbound link mainly trips the *Blend and Independence* signals. It is the only external editorial link in the whole post, while Hunter Talent, the business the case study is actually about, gets no link at all.

| Article signal          | How the flagged link trips it                                                                                                |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Blend                   | The only outbound editorial link on a page that otherwise links internally or to the site owner’s products, so it stands out |
| Openness / Independence | No other third party is linked, which suggests the link exists because of the arrangement, not reader need                   |
| Placement (link desire) | The reader’s desire peaks at Hunter Talent and the results, not at the provider’s name; the link sits off-peak               |
| Primacy                 | A link to the specific case study page would be stronger than a homepage                                                     |
| “Who wanted the link?”  | Any SEO would guess the linked provider immediately                                                                          |

Clumsy integration ruins what could be truly great links. Even seasoned link builders struggle to make things fit. We're simply not subject matter experts at every single thing and a lot of outreach content that gets pumped out is, how should I put it.... uninspired.

So, how do I solve this?

## Adversarial Link Integration

We use an outreach workflow in [app.dejan.ai](https://app.dejan.ai/property/43?tab=outreach) that simultaneously battles our two algorithms. It puts two AI teams up against each other. The red team researches the topic, writes the article and places your link. The blue team is our paid link detector, and its only job is to find the link someone paid for. If it finds it, the article is discarded.

[adversarial-flow]

Only articles the detector can't crack make it to our outreach content library.

**Click to see a more detailed version**

Press "Play" to see it in action.

[adversarial-loop]

.

Tools: [Link Optimizer](https://app.dejan.ai/property/43?tab=content_optimizer&sub=link_optimizer), [Adversarial Link Integration](https://app.dejan.ai/property/43?tab=outreach)

> ![Illustrated portrait of Cyrus Shepard with light facial stubble against a solid red background.](https://dejan.ai/media/images/posts/outreach.jpg)Google has sooooooo many ways of detecting *inauthentic* links. We SEOs think we're being clever with rules like "only one commercial link per page" and use "naked URLs" mixed with brand anchors. But Google knows. Everyone knows. In truth, we think those methods work because they DO kinda work a lot of the time. Google has to work with the web they have. And successful brands with big link profiles can get away with a lot more. But less successful brands? It's an uphill battle.  
> [Cyrus Shepard](https://lnkd.in/p/gz6famX3)

The

**input**

```
{
  "post": {
    "author": {
      "name": "Dan Petrovic",
      "profile_url": "app.dejan.ai"
    },
    "date": "Oct 6",
    "status": "Edited",
    "content": "I'm writing an important piece about outreach and link building for AI search.\nhttps://lnkd.in/gAe-_yif\n\nFeel free to drop your thoughts, experiences or questions, including things you'd like me to cover.\n\nThis will be a good one.",
    "metrics": {
      "reactions": 59,
      "comments": 34,
      "reposts": 1,
      "impressions": 4562
    }
  },
  "comments": [
    {
      "author": {
        "name": "Dan Petrovic",
        "badge": "Author",
        "profile_url": "app.dejan.ai",
        "headline": "Author"
      },
      "date": "2d",
      "content": "So far... https://dejan.ai/blog/outreach/\n\nLink Building & Outreach for AI Search\ndejan.ai",
      "metrics": {
        "reactions": 0,
        "impressions": 89
      },
      "replies": []
    },
    {
      "author": {
        "name": "Ash Nallawalla",
        "badge": "Premium Profile 1st",
        "connection": "1st",
        "headline": "Brand Visibility Governance | Author of “Managing SEO” book series | Advisor on external visibility for Executives"
      },
      "date": "5d",
      "content": "Make the outreaching tool capable of assessing the target as someone who is amenable to link requests.",
      "metrics": {
        "reactions": 4,
        "replies_count": 2
      },
      "replies": [
        {
          "author": {
            "name": "Aamir Saleem",
            "badge": "Premium Profile 3rd+",
            "connection": "3rd+",
            "headline": "Review Reputation Management Specialist | Google, Trustpilot, Tripadvisor & SAAS | Negative Review Removal & Organic Review Growth | Policy Compliance | Violation Analysis | Evidence Assessment | Platform Enforcement"
          },
          "date": "5d",
          "content": "Ash Nallawalla Amenable is a useful word choice there. A target can be a perfect fit on paper and still be someone who would never say yes to a link request.",
          "metrics": {
            "reactions": 0
          }
        },
        {
          "author": {
            "name": "Ash Nallawalla",
            "badge": "Premium Profile 1st",
            "connection": "1st",
            "headline": "Brand Visibility Governance | Author of “Managing SEO” book series | Advisor on external visibility for Executives"
          },
          "date": "4d",
          "content": "Aamir Saleem If the pages show links to unrelated entities, they probably are amenable to outreach.",
          "metrics": {
            "reactions": 0
          }
        }
      ]
    },
    {
      "author": {
        "name": "Jairo Guerrero",
        "badge": "Premium Profile 1st",
        "connection": "1st",
        "headline": "Technical SEO For Large Websites | Revenue-Driven Search Strategies | Organic Growth On All Search Channels | Trained +100 Companies | Co-founder @ Organic Hackers"
      },
      "date": "5d",
      "content": "Will Open AI build their own index (if they haven't yet) therfore looking at actual links?",
      "metrics": {
        "reactions": 3,
        "replies_count": 1
      },
      "replies": [
        {
          "author": {
            "name": "Rayyan Ashraf",
            "badge": "2nd",
            "connection": "2nd",
            "headline": "Link Acquisition and Digital PR Specialist for SaaS & AI Brands | Founder @ NexoraMedia.io"
          },
          "date": "5d",
          "content": "Jairo Guerrero Are you seeing OpenAI's crawlers in your server logs on large sites?\nCurious whether they follow links the way Googlebot does.",
          "metrics": {
            "reactions": 0
          }
        }
      ]
    },
    {
      "author": {
        "name": "Tadeusz Szewczyk (Tad Chef)",
        "badge": "1st",
        "connection": "1st",
        "headline": "I Am/You are the universe/As above so below. Call me Tad. Blogger, vegan, ecstatic dancer, dances with walls. Join me! Yopada.com"
      },
      "date": "4d",
      "content": "Most link building \"outreach\" for conventional search is still abysmal. \n\nEven the cold outreach approach itself and sending hundreds of messages at once. \n\nI get outreach messages every day. Yet I've seen just three good attempts this year.\n\nEven though I shared successful outreach templates over a decade ago.\n\nThus I'd clarify that it sucks that way. \n\nAlso tell us what changes are significant for AI search: \n\nIMHO nowadays a brand mention may suffice and you need fresh content (not just an addition to existing one).",
      "metrics": {
        "reactions": 3
      },
      "replies": []
    },
    {
      "author": {
        "name": "Alice Orlova",
        "badge": "Verified Profile 1st",
        "connection": "1st",
        "headline": "Awesome AEO content & research | Head of Content | No lame AI SEO audits | A girl & her Tampermonkey | DM for an uber cool, personalized, _CHEAP_ AEO content plan for your cash-strapped startup"
      },
      "date": "4d",
      "content": "Dan, please cover listicle swaps. I've talked to some startup CEOs/CMOs who were too strapped for cash to afford paid placements in 3rd-party outlets that AI search likes to use as sources, yet were uncomfortable reaching out to startups in an adjacent niche to suggest exchanging listicle mentions. And I mean narrow niches where AI search happily munches on vendor-published listicles.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Eduard Blacquière",
        "badge": "Verified Profile 1st",
        "connection": "1st",
        "headline": "SEO & AI Search Consultant @ Edwords Consultancy - Co-founder SEO Pro Academy & Friends of Search conference"
      },
      "date": "5d",
      "content": "My thoughts are that link building and outreach for AI Search should be focused on building brand associations in the parametric memory of LLMs. Besides that, its value also remains to build pagerank basically to improve web search rankings (which helps in AI Search in retrieval). And this traditional link value might improve your common crawl ranking, which might help for models still using that.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Deyan Simeonov",
        "badge": "1st",
        "connection": "1st",
        "headline": "We make brands visible and cited across AI search, chat, assistants and agents."
      },
      "date": "4d",
      "content": "When it comes to outreach for AI Search, many of the URLs that surface during an analysis or audit are listicles. That’s not particularly surprising.\n\nThe more interesting challenge comes when those listicles are published by your competitors: how do you get your brand included, and how do you approach it the right way?\n\nWe’ve actually been doing this long before the AI Search era. What still surprises me is how many websites we work with have published their own listicles mentioning and linking to competitors, sometimes more than once, but have never tried to turn those mentions into reciprocal opportunities.\n\nIn many cases, the hook is already there. You’ve already mentioned and linked to a competitor on your own website, while they have an article where your brand would be a natural fit. Yet nobody has reached out and asked to be included.\n\nToday, that missed opportunity matters even more. Some of those competitor listicles are now performing well across AI Search models and are being retrieved or used when generating answers.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Michael King",
        "badge": "Verified Profile 1st",
        "connection": "1st",
        "headline": "Founder of iPullRank | USA Today Top 10 SEO | 2X Search Marketer of the Year | Author of “The Science of SEO” Book Coming Soon | Toured 4 Continents as a Speaker and Rapper | Bain Advisor"
      },
      "date": "4d",
      "content": "Relevance or nothing",
      "metrics": {
        "reactions": 4
      },
      "replies": []
    },
    {
      "author": {
        "name": "Maximilian Hitzler",
        "badge": "1st",
        "connection": "1st",
        "headline": "Senior SEO Manager & Consultant"
      },
      "date": "5d",
      "content": "How to get the most out of it (for all worlds), geo, seo, converting visitors 😌",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Aviel Fahl",
        "badge": "Verified Profile 1st",
        "connection": "1st",
        "headline": "Associate Director, Technical SEO | AI Search & Enterprise | Brainlabs"
      },
      "date": "4d",
      "content": "Looking forward to reading!",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Jared Caraway",
        "badge": "Premium Profile 2nd",
        "connection": "2nd",
        "headline": "Enterprise Technical Healthcare SEO Leader & Homelab Nerd | Ex-SEO for a Fortune 5 property | Web Developer | Automation & Scripting Expert"
      },
      "date": "5d",
      "content": "I've got a couple for you.\n\nHow can you gauge when a link is worth paying for? That would be helpful information. At a previous gig I contacted something like Business Insider about getting our brand mention linked and was quoted $5K. After I got done laughing, I politely declined.\n\nAlso, maybe touch on whether PRs are still a valid technique. Lots of SEOs still rely on firing off press releases. If conditionally useful, in what circumstances?",
      "metrics": {
        "reactions": 2,
        "replies_count": 1
      },
      "replies": [
        {
          "author": {
            "name": "Federico Stier",
            "badge": "Premium Profile 1st",
            "connection": "1st",
            "headline": "CEO & Co-Founder, IMPERO BA | Brand & Business Strategy"
          },
          "date": "4d",
          "content": "Jared Caraway i like this approach",
          "metrics": {
            "reactions": 0
          }
        }
      ]
    },
    {
      "author": {
        "name": "Ourex.Pro",
        "badge": null,
        "connection": null,
        "headline": "22 followers"
      },
      "date": "1d",
      "content": "One thing I'd add: the outreach that wins in AI search often isn't framed as link outreach at all. Campaigns built around a genuinely newsworthy angle earn both links and brand mentions from the same publishers — and models tend to cite those mentions regardless of the link. Optimizing outreach purely for the link misses half the visibility the piece is actually buying.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Jitender Ahlaawat",
        "badge": "Premium Profile 2nd",
        "connection": "2nd",
        "headline": "Local SEO Consultant | Helping Agencies Keep Local Clients Visible Across Google & AI Search | Local, On-Page & Technical SEO | SEO Since 2017"
      },
      "date": "5d",
      "content": "Could you include how you'd choose outreach targets for a local service business? For a plumber serving one city, I'd be interested in how you'd assess local publications versus national industry sites, and what evidence you'd look for before attributing an AI mention to that placement.",
      "metrics": {
        "reactions": 3
      },
      "replies": []
    },
    {
      "author": {
        "name": "Swapnil Pate",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "Enterprise AI Search, SEO & Growth Consultant | GEO & SEO Speaker"
      },
      "date": "5d",
      "content": "Thinking about link building for AI search works really well when thinking about building categorical association for your brand. To do this, easiest way is to do some research around which publishers have good AI search visibility to ensure you build campaigns with getting media placements in mind for your niche. \nSince guest posting has become a low reward activity considering most of these sites were built on the back of informational traffic (which barely exists anymore for most), brand-category alignment really works well as a goal to consider for campaigns.",
      "metrics": {
        "reactions": 4
      },
      "replies": []
    },
    {
      "author": {
        "name": "Muhammad Almas",
        "badge": "2nd",
        "connection": "2nd",
        "headline": "Co-Founder @ AlgoRank Ltd & UH Services | SEO Consultant & WordPress Developer | Turning Google Searches Into Leads for Clinics, Real Estate & Local Businesses"
      },
      "date": "1d",
      "content": "The question I'd love to see covered: what actually earns a citation rather than a link? Anchor text and DR made sense when the reward was a backlink, but when the reward is being the source an answer quotes, the criteria shift toward being quotable and current. I'd read a piece testing outreach aimed purely at citation-worthiness.",
      "metrics": {
        "reactions": 0
      },
      "replies": []
    },
    {
      "author": {
        "name": "Siddharth K.",
        "badge": "2nd",
        "connection": "2nd",
        "headline": "Leading Outreach @factoHR | Worked with Jotform, Cloudways, & HubSpot | Link Building & SEO Specialist"
      },
      "date": "5d",
      "content": "It's a chasing game; citation sources change almost every month, and you need to keep chasing. Either for listicles or brand mentions.\n\nA lot of the cited domains (especially in ChatGPT) are younger sites with very low metrics. Why do they get cited? My assumption is due to their freshness signals and tighter niche-specific signals.\n\nHow likely is a source to be used as a citation by an LLM model again if it was removed from the pool of consensus creation sources?\n\n I have noticed a very specific network of sites being operated by a company that's getting cited in ChatGPT for almost all the \"Best of\" queries in the market. There seems to be a way around that guarantees ChatGPT citations.\n\nApprox how much time would it take to change the LLM's understanding of your brand in a specific manner? Let's say you've changed the business model entirely or find LLMs understanding your business in the wrong context. Will it be fixed when the next model comes out, or will it take more than one model update? (given that we've updated what the sources say about the business)",
      "metrics": {
        "reactions": 2
      },
      "replies": []
    },
    {
      "author": {
        "name": "Relja Bojovic",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "Content, SEO & GEO for SaaS and dev tools | I build my own software | reljabojovic.com"
      },
      "date": "4d",
      "content": "the success rate of subject matter expertise pitches vs. quid pro quo link exchanges",
      "metrics": {
        "reactions": 2
      },
      "replies": []
    },
    {
      "author": {
        "name": "Nosheen Kanwal",
        "badge": "2nd",
        "connection": "2nd",
        "headline": "Local SEO Specialist | Multi-Location & Google Maps SEO | Working with clients across US, UK & beyond"
      },
      "date": "3d",
      "content": "One angle worth exploring: whether AI search citations follow the same \"authority link\" logic as Google, or if they're more about being the clearest explanation of a concept. My hunch is quotability is becoming its own ranking factor. Curious if your data backs that up.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Mohamed Diab",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "SEO"
      },
      "date": "4d",
      "content": "User Usage Statistics/ Statistics / Datasets are one of the strongest ways to build linkable assets which are linked-to from other websites on Autopilot like crazy. \n\nI used to manage an AI News websites and created a Statistics Articles about different AI Adoptions in different sectors. Luckily, within a 30 Days timeframe this section of websites landed a 23 Organic links and Ahrefs is listing 3 or 4 of them as Best Links. \n\nAll PPL, now are prompting agents to include stats in their articles to support their EEAT and then these agents hungrily seek websites which provides this data points.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Sanjay Ananda Behera",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "Co-Founder, Oddtusk | Semantic SEO Architect | Helping ecommerce brands get found on Google and in AI answers"
      },
      "date": "2d",
      "content": "Two questions I would love the piece to answer.\n\nFirst, what is the unit now? A figure shared this week says only 2.9 percent of AI citations point to a brand's own site. If that holds, a link to your page matters less than the sentence written about you on someone else's page. Does outreach need to brief the wording, not the anchor? Ahrefs just found Wikipedia and YouTube leading the source lists on big brand names. Neither is a classic link target.\n\nSecond, how do you prove it worked? In my data AI assistants send well under 1 percent of sessions, and GA4 misses every visit with no referrer. So referral traffic cannot be the proof. What would you accept as evidence?",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Muhammad Tayyab",
        "badge": "2nd",
        "connection": "2nd",
        "headline": "Link Building Specialist | Putting Brands on Google & AI Search (ChatGPT, Perplexity) | 600+ Placements | Guest Posts & Link Insertions for SaaS & other Brands"
      },
      "date": "4d",
      "content": "Dan Petrovic Great topic. One thing I'd love to see covered: whether outreach for AI citations needs a different pitch than classic link outreach. Getting cited and getting linked feel like they're starting to diverge.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Bernhard Hochrainer",
        "badge": "Premium Profile 2nd",
        "connection": "2nd",
        "headline": "Principal Strategist – AI, Data & Search bei pixelart | Neugierig auf Technologie. Kritisch gegenüber Hype. Fortschritt beobachten. Interessiert daran, was uns allen wirklich hilft."
      },
      "date": "4d",
      "content": "I’d be interested in outreach aimed at correcting existing information.If an already-cited page describes an outdated product or repeats an unsupported limitation, getting that statement reviewed could be more useful than securing another mention somewhere else. You know, like in oldschool seo days, when everybody splitted offpage work in new / make existing better. \nHow would you prioritize those opportunities against new placements? And what would you track afterwards: Whether the source changed, whether AI answers picked up the correction, and whether the recommendation itself changed? \n\nFor me that feels like an overlooked part of the link-building conversation, improving what influential sources say about a business.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Gert Mellak",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "European AI SEO Consultant - Get Recommended in Search and AI"
      },
      "date": "4d",
      "content": "To me, link building has always been a join-the-dots game. You connect the dots between your brand, your target audience, relevant topics, on relevant and authoritative sites. \n\nThe better + more often you do this, the stronger the connections, and the clearer the picture you paint for search- and AI platforms.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Danish Ahmad Khan",
        "badge": "2nd",
        "connection": "2nd",
        "headline": "Co-Founder @ The Outreach King | White Label Link Building for SEO Agencies"
      },
      "date": "4d",
      "status": "edited",
      "content": "Almost everyone just inquires about publishers, should go to url level targeting. Ask about exact urls. Run target prompts and notice which urls appear repeatedly. Pitch only them. \nAn authoritative domain may never get cited but few pages say a listicle may show up many times.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Aamir Saleem",
        "badge": "Premium Profile 3rd+",
        "connection": "3rd+",
        "headline": "Review Reputation Management Specialist | Google, Trustpilot, Tripadvisor & SAAS | Negative Review Removal & Organic Review Growth | Policy Compliance | Violation Analysis | Evidence Assessment | Platform Enforcement"
      },
      "date": "5d",
      "content": "One Id be interested in: where customer reviews fit into this, whether on Google Business Profiles or dedicated platforms like Trustpilot and Tripadvisor. Does earning genuine reviews there belong in the same conversation as outreach and mentions for AI search, or is it a separate track entirely?",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    },
    {
      "author": {
        "name": "Derek Hobson",
        "badge": "Verified Profile 2nd",
        "connection": "2nd",
        "headline": "SEO Humorist | Digital CPR | Director of AI Search & Organic Growth | Former Pirate"
      },
      "date": "5d",
      "content": "Working with affiliate marketers (internal affiliate). I’ve seen more than a few affiliate/sponsored links that Google may (or may not) consider useful for backlink authority, but ChatGPT and Gemini will pull the affiliate links in for responses.",
      "metrics": {
        "reactions": 1
      },
      "replies": []
    }
  ]
}
```

from the SEO community has been [phenomenal](https://lnkd.in/p/gfzrPxG2). So the part 2 of this post will dive deeper into that.

- **Target amenability**: evaluating whether an outreach prospect is open to link requests before pitching.
- **LLM crawling and link evaluation**: whether OpenAI will build an independent web index, how its crawlers follow links, and whether LLMs evaluate link graphs directly.
- **Mentions versus links**: moving away from cold outreach toward newsworthy brand mentions that models cite without requiring a backlink.
- **Listicle swaps and competitor outreach**: negotiating inclusion in competitor listicles and setting up reciprocal mentions between adjacent businesses.
- **Parametric memory versus retrieval**: building entity associations into model training weights versus acquiring PageRank to help with retrieval and Common Crawl.
- **Paid placement economics**: assessing when high-priced editorial links or brand mentions justify the cost.
- **Press release validity**: determining if and when press releases remain useful for AI visibility.
- **Local SEO outreach**: balancing local publications against national trade sites, and attributing AI mentions to local placements.
- **Quotability as a ranking factor**: structuring content to earn citations rather than backlinks, prioritizing clear conceptual explanations, freshness, and quotability over domain rating.
- **Citation volatility and young domains**: understanding monthly citation churn, why fresh low-authority domains get cited, and how networks gain visibility.
- **Brand update lag**: how long it takes for updated facts to alter an LLM's understanding of a business across model updates.
- **Pitch formats**: comparing the success rates of subject-matter expertise pitches against reciprocal link exchanges, and adjusting pitch angles specifically for citations.
- **Data and statistics as link magnets**: using proprietary datasets and statistics to attract citations from AI agents looking to back claims.
- **Off-page sentence briefing**: focusing on the specific sentence written about a brand on third-party sites rather than anchor text, including platforms like Wikipedia and YouTube.
- **Measurement and analytics**: tracking AI search attribution and impact given minimal referral traffic and missing GA4 referrers.
- **Information correction outreach**: auditing and updating outdated or inaccurate brand facts on already-cited pages instead of building new placements.
- **URL-level targeting**: reverse-engineering target prompts to identify the exact URLs repeatedly cited by models and pitching only those specific pages.
- **Review platforms**: how reviews on Google Business Profiles, Trustpilot, and TripAdvisor influence AI search recommendations.
- **Affiliate and sponsored links**: how models like ChatGPT and Gemini handle and cite affiliate links compared to traditional search algorithms.
- **Channel balance**: optimizing simultaneously for AI visibility, traditional SEO, and user conversions.

## Part 2: Inauthentic Brand Mentions

Inorganic brand mentions designed to game AI search visibility are the modern analogue of spammy links. They leave the same unnatural footprints, waste client budgets, and trip the exact same algorithmic filters.

### The four signals of an inorganic mention

Just as natural linking follows stable human habits that models predict with ease, brand mentions follow predictable patterns. When an outreach campaign forces a brand into an article solely to feed retrieval systems, it leaves unmistakable signals:

- **Forced placement:** The mention lacks editorial justification and does not help the reader. It sits on the page as an insertion rather than an earned reference.
- **Status climbing:** A lesser-known brand places itself alongside established market leaders, often awarding itself the top spot to borrow their credibility.
- **Promotional framing:** The surrounding text relies on superlatives, marketing slogans, or a call to action lifted straight from the brand's own sales copy.
- **Commercial benefit:** The mention exists to serve the business being named, providing no utility to the audience reading the piece.

Every one of these signals points back to incongruence. When a mention exists for promotion rather than editorial context, both human readers and language models spot it.

### The self-serving listicle trap

Most inauthentic mentions are not subtle enough to require a deep learning model. Simple heuristics catch them immediately.

Take this real-world example: an agency based in Mumbai publishing [an article titled "Top 11 SEO Companies in Australia"](https://noirandblanco.com/top-seo-companies-in-australia/). The publisher awards itself the number one position as the premier Australian provider, then fills positions two through eleven with established Australian agencies. They repeat the identical format across dozens of locations: Columbus, Kerala, Washington DC, and Kolkata.

A basic script detects this pattern in seconds: domain registration in one country, an editorial claim of leadership in another, self-ranking at position one, and a list of recognized regional competitors pasted underneath. It requires no complex artificial intelligence to identify this as manipulation.

### The relevance-by-association paradox

Here is the nugget to consider:

### **All these wannabes are actually helping the big agencies they plant themselves next to.**

The legacy brands do not have to be good at AI SEO. They do not have to build links, optimize for retrieval engines, or lift a finger. Their competitors are doing all the heavy lifting for them in a bizarre, self-fulfilling prophecy.

Desperate to manufacture relevance by association, amateur outreach operations forge the very training data and retrieval documents that cement their rivals as market leaders. Every artificial listicle pumped into the web repeatedly reinforces those same established names as the undisputed standard.

### **They think they are hacking AI visibility. In reality, they are paying money to dig their own graves while making their largest competitors permanently bigger.**

[association-paradox]

### How search engines handle inauthentic mentions

My forecast is that retrieval systems and search engines will handle inauthentic mentions through silent devaluation rather than visible penalties. The planted mention stops counting, and the publisher receives no notification. I base this expectation on four structural factors:

**The link precedent.** Since Penguin 4.0 in 2016, Google has favored ignoring manipulative links over issuing manual demotions, reserving manual actions for large-scale schemes. Brand mentions are a weaker signal than hyperlinks, making algorithmic discounting the most efficient response.

**Host-level enforcement.** Google's site reputation abuse policy targets third-party commercial listicles on external hosts. When the host site loses search visibility under this policy, the planted mention loses its retrieval pathway automatically.

**Retrieval-stage filtering.** Grounded language models generate answers strictly from the passages their retrieval layers select. Classifiers applied to candidate passages can filter out planted brand names before the synthesis step, preventing the citation from ever appearing in an answer.

**Negative SEO risks.** Applying domain-level demotions to brands named in spammy content would create an immediate exploit. Competitors could plant low-grade mentions to trigger penalties against other businesses. Discarding the signal eliminates that risk.

See:

**Anthropic's Policy Update**

## Do Not Create or Spread Disinformation

This includes using our products or services to:

- Create or disseminate deceptive or misleading information about a group, entity, or person, or about events, laws, regulations, procedures, or the standards of an institution or governing body
- Create, disseminate, or amplify conspiratorial narratives meant to target a specific group, individual, or entity
- Impersonate real individuals or entities, or create fake personas or accounts, to falsely attribute content or mislead audiences about its origin, or to convince people they are interacting with a human when they are not. This does not prohibit clearly disclosed parody, satire, or fiction.
- Create or disseminate false or misleading information related to medical, health, or science issues

## Do Not Engage in Deceptive Campaigns or Artificial Activity

This includes using our products or services to:

- Create or operate fake personas, accounts, media outlets, or organizations, or impersonate real people, organizations, or media outlets, in order to mislead people about their origin or attribution, how widely a view is held, or whether they are interacting with a human (e.g., sockpuppets, astroturfing, fake reviews, or bots that claim to be human)
- Misrepresent or intentionally conceal the sponsorship of content or messaging intended to influence public opinion, officials, or other decision-makers
- Distribute content through networks of fake or ostensibly independent outlets, websites, or accounts to hide that it comes from a common source
- Manipulate the sources from which search engines or AI systems draw answers by seeding them with content that misrepresents its origin, authorship, or independence (e.g., networks of sites posing as unaffiliated sources corroborating the same claims)
- Build, improve, maintain, or contribute to tools, systems, or infrastructure designed to facilitate or enable deceptive campaigns, including astroturfing, sockpuppet account creation, coordinated inauthentic behavior, or scaled impersonation
- Market, sell, or solicit funding for any of the above as a product or service  

  Source: <https://www.anthropic.com/legal/aup>  

  H/T: [Lily Ray](https://www.linkedin.com/in/lily-ray-44755615/), [Hanns Kronenberg](https://www.linkedin.com/in/hannskronenberg/) and [Matt G. Southern](https://www.linkedin.com/in/mattgsouthern/) for discovering and sharing this: <https://lnkd.in/p/ga6JKBGT>

The financial consequence is straightforward: budgets allocated to artificial brand mentions produce zero return, with no alert indicating when the devaluation began.

### Verification and quality control at DEJAN

We use automated detection internally to audit existing exposure and protect our client campaigns.

For client analysis, we batch-process all mentions collected through [citation mining](https://app.dejan.ai/property/43?tab=citations). The detection engine scans these records to surface patterns of inauthenticity, showing where historical outreach or third-party syndication created exposure.

To test individual pages, we built the [inauthentic mention detector](https://dejan.ai/tools/fml/), with an enterprise version inside the [DEJAN App Outreach Checker](https://app.dejan.ai/property/43?tab=outreach&sub=checker). Ticking the "include mentions" option runs candidate URLs through our classifiers to flag commercial insertions, status climbing, and incongruent entity pairs.

Even well-crafted editorial pages can trip these signals. When testing third-party guides, our checker flags direct homepage links and brand placements that exist under the context of case studies or contributor quotes if they provide commercial equity without organic justification.

For our own outreach campaigns, every placement is researched and written manually. We run the detector as an automated gate in the workflow, testing each placement before publication to verify that the brand context meets editorial standards and avoids the footprint of artificial integration.

## Part 3: Answering the Community

### Listicle swaps and competitor inclusions

Do not do that. It is a short-lived tactic that will not stand the test of time. Work on your brand and the substance of your content instead.

Nicely written text is no longer a bottleneck when any spammer has access to a language model. The question is what new information or insight you bring to the table. In link building, we have always relied on linkable assets. Outreach is much easier when you have something valuable on your site already. Prioritize building meaningful connections, and give honesty a shot as a tactic. People mentioning you for the real value you provide will outlast every cheap trick.

### What makes an asset citable

An asset does not need to be written content. It can be a utility that solves a problem, or a documented process that helps people work. It can also be creative media, such as original photography, video, art, music, or design templates.

Another asset class is pure data paired with an attribution policy as a condition of use. We do this at DEJAN. Examples include our open-source model [LinkBERT](https://huggingface.co/dejanseo/LinkBERT) and our free [200k wiki data embeddings](https://huggingface.co/datasets/dejanseo/200k-wiki-data-embeddings-gemma), protected by our [link attribution policy](https://dejan.ai/link-attribution/).

When distributing these assets, use a mix of inbound and outbound promotion. Promote the asset itself so publishers discover it and come to you, rather than harassing people with cold outreach.

### URL-level targeting and citation mining

Danish Ahmad Khan suggested prompting AI engines to find the exact URLs they cite repeatedly. We do this through periodic citation mining, run on both an ad hoc basis and a scheduled cadence.

We mine data across three layers:

- [Top cited domains](https://app.dejan.ai/property/43?tab=citations&sub=domains)
- [Top cited pages](https://app.dejan.ai/property/43?tab=citations&sub=pages)
- [Top cited mentions](https://app.dejan.ai/property/43?tab=citations&sub=mentions)

This data informs three practical decisions:

1. What types of pages we and our clients should build on our own sites to earn AI retrieval attention.
2. What types of content we can pitch for publication on external targets.
3. What existing lookalike pages on third-party sites we can seek inclusion in.

### Paid placements and site promiscuity

Paying to lubricate a deal is fine in certain commercial contexts, though never on listicles. Before paying anything, examine how promiscuous the host site is. If the site is covered in spam and commercial abuse from other paying brands, steer clear of it.

### Correcting inaccurate citations

If an influential page is already cited by language models but repeats inaccurate or outdated facts about your brand, treat that as a public relations task. We handle this through direct PR, having a former journalist reach out to writers in the same professional spirit.

For broader PR efforts, prioritize direct media relationships over brute-force press release syndication, which produces mostly noise.

### How search engines, crawlers, and LLMs interact

AI platforms run small-scale retrieval-augmented experiments, mini data stores, and proprietary content partnerships, but they all depend on search engines for web-scale grounding. Gemini uses Google. Google data is scraped and supplied to OpenAI to patch holes in Bing's index, and Anthropic uses Brave Search.

Maintaining a fresh, comprehensive web index is an enormous engineering problem. None of the standalone LLM companies have solved it. Meta and X have proprietary social signals that provide real-time freshness, but they lack web-scale link analysis and PageRank. Only Google and Microsoft possess that infrastructure.

Beyond web search grounding, models also fetch URLs directly through tool use and agent harnesses, which typically feed the model a stripped-down markdown representation of the page.

### Affiliate links and commercial intent

Language models reason about commercial bias if the underlying signals reach them. If tracking parameters and affiliate disclosures survive page cleanup, the model can account for the commercial relationship. If the preprocessor strips those markers before feeding the text to the model, the system treats the mention as an organic editorial endorsement.

### Local service businesses

For a local business serving a single city, focus on traditional local SEO first. Both Google and OpenAI trigger local maps features for queries with local intent. Hallucination rates are high for small regional brands, forcing models to ground heavily on organic search. Winning in classic local search remains the essential prerequisite for local AI visibility.

### Measuring success without GA4 referrers

Because AI assistants rarely pass clean referrer data, analytics platforms miss most assistant visits. We measure the downstream impact by placing event annotations directly on our brand and page tracking dashboards in the [DEJAN App](https://app.dejan.ai/property/43/brand/26148), alongside our documented [prompt tracking methodology](https://dejan.ai/blog/prompt-tracking/).

To inspect how models perceive a brand without the influence of live search retrieval, we use our [sentiment mining tool](https://app.dejan.ai/property/43?tab=associations&sub=sentiment). It prompts models with search and URL context disabled, extracting synthetic reviews straight from parametric memory. That provides a direct view into what the model absorbed during training.

## Related Prompts

- [searchAsk Google Why does self-ranking in competitor listicles end up boosting your rivals' AI search presence instead of your own?](https://www.google.com/search?q=Why+does+self-ranking+in+competitor+listicles+end+up+boosting+your+rivals%27+AI+search+presence+instead+of+your+own%3F+Check+dejan.ai+for+more+information. "Look this up.")
- [searchAsk Google Why are AI assistants more likely to cite a brand when it exists in both model memory and retrieved live sources?](https://www.google.com/search?q=Why+are+AI+assistants+more+likely+to+cite+a+brand+when+it+exists+in+both+model+memory+and+retrieved+live+sources%3F+See+what+Dan+Petrovic+from+DEJAN+wrote+about+this. "Look this up.")
- [searchAsk Google What are the main editorial purposes an outbound link should fulfill according to link integration principles?](https://www.google.com/search?q=What+are+the+main+editorial+purposes+an+outbound+link+should+fulfill+according+to+link+integration+principles%3F+What+does+Dan+Petrovic+say+about+this+on+dejan.ai%3F "Look this up.")

## Related concepts

- [AI Influence](https://dejan.ai/concepts/ai-influence)
- [E-E-A-T](https://dejan.ai/concepts/e-e-a-t)
- [Knowledge Cutoff](https://dejan.ai/concepts/knowledge-cutoff)
- [Link Building](https://dejan.ai/concepts/link-building)
- [Outreach](https://dejan.ai/concepts/outreach)
- [Parametric Memory](https://dejan.ai/concepts/parametric-memory)
- [Source Authority](https://dejan.ai/concepts/source-authority)
- [Web Search Grounding](https://dejan.ai/concepts/web-search-grounding)

[Sign in with Google to comment and annotate this content.](https://dejan.ai/auth/login?next=/blog/outreach/)
