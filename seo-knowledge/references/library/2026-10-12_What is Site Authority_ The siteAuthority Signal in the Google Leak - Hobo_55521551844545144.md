---
title: "What is Site Authority? The siteAuthority Signal in the Google Leak - Hobo"
topic_id: "55521551844545144"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-12T04:13:04.029+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#"]
original_urls: ["https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/"]
---

# What is Site Authority? The siteAuthority Signal in the Google Leak - Hobo

- 发布时间：2026-10-12T04:13:04.029+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/55521551844545144)
- 标签：#SEO#

## 星球正文

What is Site Authority? The siteAuthority Signal in the Google Leak - Hobo

Hobo 的 Shaun Anderson 专门拆了 2024 年 Google 泄露文档里的 siteAuthority 字段。很多人看到这个名字就说"Google 骗了我们十年,其实有域名权威分"。作者的结论是:Google 没撒谎,它否认的是 Moz 的 DA 和"把外链加总成一个域名分",并没有否认站级质量分。

要点：
1. 泄露文档对 siteAuthority 只有一行描述："converted from quality_nsr.SiteAuthority, applied in Qstar"，类型是整数，默认值 nil（空，不是 0）。它只写了数据从哪来（NSR 站级质量体系）、用在哪（Q* 质量评分），完全没写输入是什么。所以"它就是算外链的""新站从 0 分起步""它是排名第一道闸门"这类说法都没有文档依据，作者一口气驳了 17 条。
2. 这个字段所在的 CompressedQualitySignals 模块，文档写明是压缩后送进 Mustang 和 TeraGoogle 的信号，在 TeraGoogle 里用于 preliminary scoring（初步打分），存放在 "very limited serving memory (Flash storage)"。作者据此推断它是提前算好、变化很慢的基线分（作者推论）。
3. Google 官方表态按时间排一下：Matt Cutts 2013 说会识别某领域的话题权威；Gary Illyes 2016 说 "We don't really have overall domain authority"；Paul Haahr 2017 说没有哪一个信号叫"authority"；John Mueller 2018 承认 "we do have some metrics that are more on a site level"；2019 又说 Google 不评估网站的 authority；2022 说做 Google 搜索 "you do not need DA"。
4. 实操含义：别花钱刷第三方 DA 分数，那是 Google 根本不看的游戏；作者认为 Google 在这一块看的是链接质量、点击和整站内容质量。

结论：泄露暴露的不是 Google 撒谎，而是它措辞极度精确——否认的是工具商的指标名，不是"站级信任分"这个概念。

原文：[https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/](<https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/>)

## 外部原文

### 原文 1

- 来源：<https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/>
- 抓取时间：2026-10-17T02:39:12.452363+00:00
- 状态：已获取原文页面

---
canonical: https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/
meta-article:author: https://www.facebook.com/hobowebservices/
meta-article:modified_time: 2026-10-13T02:58:52+00:00
meta-article:published_time: 2026-10-10T23:06:51+00:00
meta-article:publisher: https://www.facebook.com/hobowebservices/
meta-author: Shaun Anderson
meta-description: Function: Long-debated "domain authority"-like metric, confirmed as a real, calculated, and persistent score. Defined as "converted from quality_nsr.SiteAuthority, applied in Qstar".
meta-msapplication-TileImage: https://www.hobo-web.co.uk/wp-content/uploads/cropped-hobo-logo-black-cropped-1200-270x270.jpg
meta-og:description: Function: Long-debated "domain authority"-like metric, confirmed as a real, calculated, and persistent score. Defined as "converted from quality_nsr.SiteAuthority, applied in Qstar".
meta-og:image: https://www.hobo-web.co.uk/wp-content/uploads/site-authority.png
meta-og:image:height: 613
meta-og:image:type: image/png
meta-og:image:width: 1037
meta-og:locale: en_GB
meta-og:site_name: Hobo
meta-og:title: What is Site Authority? The siteAuthority Signal in the Google Leak - Hobo
meta-og:type: article
meta-og:url: https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/
meta-robots: index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1
meta-twitter:card: summary_large_image
meta-twitter:creator: @hobo_web
meta-twitter:data1: Shaun Anderson
meta-twitter:data2: 20 minutes
meta-twitter:label1: Written by
meta-twitter:label2: Estimated reading time
meta-twitter:site: @hobo_web
meta-viewport: width=device-width, initial-scale=1
title: What is Site Authority? The siteAuthority Signal in the Google Leak - Hobo
---

# What is Site Authority? The siteAuthority Signal in the Google Leak

October 13, 2026 by [Shaun Anderson](https://www.hobo-web.co.uk/author/hobowebuser/ "View all posts by Shaun Anderson")

![](https://www.hobo-web.co.uk/wp-content/uploads/site-authority.png)

Perhaps the biggest accusation levelled at Google following the [2024 API leak](https://www.hobo-web.co.uk/the-google-content-warehouse-leak-2024/) – right alongside the [Google Sandbox for new sites](https://www.hobo-web.co.uk/there-is-no-sandbox-google-lies-black-hat-accusations-and-the-hostage-attribute/) and the [drama about clicks](https://www.hobo-web.co.uk/navboost-how-google-uses-large-scale-user-interaction-data-to-rank-websites/) – is that Google spent a decade lying to the SEO industry about Domain Authority (DA).

They didn’t, really.

Critics were vocal. They opened the leaked documentation, found an attribute literally named `siteAuthority`, and immediately claimed vindication.

Their narrative was simple: *Google said they didn’t have an authority score; the code says they do; therefore, Google is a liar.*

But once again, a deep inspection of what was actually said – cross-referenced with primary analysis of the Google leaked documents – reveals that the SEO industry asked the wrong questions.

## The Trademark Trap: What Mueller Actually Said

SEOs badgered Google spokespeople about “Domain Authority” (DA). What they were actually asking about, whether they realised it or not, was a proprietary metric invented by the SEO software company Moz.

When spokespeople answered these questions, they answered with the pedantic, literal precision of a Google engineer.

In a 2022 Reddit thread, a user asked how to improve their DA. Google’s John Mueller replied: *“I’m kinda torn. On the one hand, **you do not need DA for Google Search**. Google doesn’t use it at all… For context, I don’t think I’ve ever looked up the DA for a site in the 14 years I’ve been doing this.”* ([Source](https://www.seroundtable.com/google-advice-on-increasing-your-da-33158.html))

He wasn’t lying.

Google does not scrape Moz to check your DA score. He was rejecting the third-party tool’s metric, not the fundamental concept of site-wide trust.

In fact, the folks online screaming “liar” conveniently forgot that Mueller had already admitted to site-wide metrics years earlier.

In a 2018 interview, he clarified: *“I **don’t know if I’d call it authority like that, but we do have some metrics that are more on a site level**… and **some of those site-wide level metrics might kind of map into similar things**.“* ([Source](https://www.seroundtable.com/google-site-level-metrics-25345.html))

## The Reality of siteAuthority in the Leaked Documentation

When you look at the `siteAuthority` attribute in the leaked architecture, it doesn’t function the way most critics want it to. **The industry treats “Authority” purely as a battery of backlink juice to be manipulated**.

However, `siteAuthority` sits closely tied to the Quality module, alongside systems that mathematically measure if a domain consistently publishes high-quality content without massive deviations into spam.

It can be inferred, I think, equally so that it is **a calculation of overall domain trustworthiness, or popularity, or satisfaction and not just a raw link count**.

Siteauthority cannot be domain authority because Moz, Ahrefs and Semrush are looking at links, whereas Google has the New Site Rank (NSR) framework, which is looking at the ABC of search… everything including longitudinal user satisfaction, quality analysis and technical analysis.

I think domain authority, as SEOs have historically understood it, is more probably **`pagerankNS`** (what SEOs call **quality links**) and Google’s internal **`NSR`(New Site Rank)** engine, especially **`predictedDefaultNsr.`**

As I wrote in a previous article on **[New Site Rank (NSR)](https://www.hobo-web.co.uk/new-site-rank-nsr-googles-site-wide-quality-engine/)**:
> *“When Google doesn’t know the **quality (Q******)** or **popularity (P*)** of a URL **(T* – Topicality)**, it uses the aggregate for its parent path (**NSR – New Site Rank**). Then that path’s parent, and so on (**predictedDefaultNsr**).”*

### Internal Confirmation: The API Leak Attributes & Authority

![siteAuthority: Google Leak](https://www.hobo-web.co.uk/wp-content/uploads/GoogleApi-ContentWarehouse-V1-Model-CompressedQualitySignals-%E2%80%94-google_api_content_warehouse-v0-4-0-10-10-2026_10_49_PM.png)

*siteAuthority: Google Leak*

While public statements historically danced around the concept of a single score, the Google Content Warehouse API leak definitively confirmed how site-wide authority and quality are calculated internally.

These specific attributes act as algorithmic blueprints for measuring a site’s overall clout and trust within Google’s aggregate quality framework:

#### 1. siteAuthority

- **Function:** Long-debated “domain authority”-like metric, confirmed as a real, calculated, and persistent score. Defined as `"converted from quality_nsr.SiteAuthority, applied in Qstar"`.
- **Type/Default:** `integer(), default: nil`
- **Source Context:** [Google’s Leaked CompressedQualitySignals: Advanced SEO Analysis](https://www.hobo-web.co.uk/compressedqualitysignals/)

#### 2. nsrDataProto (New Site Rank)

- **Function:** Acts as the mathematical foundation for the `siteAuthority` score, measuring site-level quality across a domain’s architecture. Contains the [New Site Rank (NSR)](https://www.hobo-web.co.uk/new-site-rank-nsr-googles-site-wide-quality-engine/), a sophisticated site-level quality and reliability score that calculates host-level scores by analysing a domain in sections or “sitechunks.”
- **Source Context:** [The PerDocData: Google’s Leaked Core Document Model](https://www.hobo-web.co.uk/perdocdata/)

#### 3. authorityPromotion

- **Function:** A direct boost attribute defined as `"authority promotion: converted from QualityBoost.authority.boost"`.
- **Type/Default:** `integer(), default: nil`

#### 4. unauthoritativeScore

- **Function:** A demotion metric that actively damages a site’s overarching authority if the domain is flagged for lacking trust or expertise. It directly impacts the “Authoritativeness” and “Trust” pillars of E-E-A-T, severely affecting a page’s overall Q* score.
- **Type/Default:** `integer(), default: nil`

#### 5. topicEmbeddingsVersionedData

- **Function:** Versioned TopicEmbeddings data (utilising `QualityAuthorityTopicEmbeddingsVersionedItem` types) populated into superroot or used directly in scorers, connecting authority data with topical context.
- **Type/Default:** `list(...)`

In Google’s internal terminology, [Q* (Q Score, Q-Star, Quality Score) is a query-independent, site-level trust and quality score](https://www.hobo-web.co.uk/the-q-metric-google-quality-score/) that is scaled from 0 to 1 at the subdomain level.

As detailed across the [Hobo Web](https://www.hobo-web.co.uk/the-q-metric-google-quality-score/) research guides, **this score acts as a fundamental ranking gate that is “largely static”** – meaning it evaluates the overall reputation and baseline trustworthiness of an entire domain rather than changing for every individual search query.

**A high Q* score functions as a rising tide that lifts all boats,** giving all pages on a domain a better baseline visibility and making the site eligible for premium search features like rich snippets and featured snippets.

### The Strategic Reality

If your entire approach to SEO is trying to hack a third-party DA score with cheap links, you are playing a game Google isn’t even looking at. Here is what Google is looking at in that area ([links](https://www.hobo-web.co.uk/the-definitive-guide-to-linkbuilding-after-the-google-content-warehouse-leak/), [clicks](https://www.hobo-web.co.uk/craps/) and [quality](https://www.hobo-web.co.uk/the-q-metric-google-quality-score/)).

A raw link-counting mechanism or a standalone PageRank graph calculation does not live as its primary function in this specific module. Instead, this module handles **compressed quality signals, demotions, and trust scores** (such as `siteAuthority`, `nsrDataProto`, `pandaDemotion`, `scamness`, `unauthoritativeScore`, and [page-level PQ data](https://www.hobo-web.co.uk/qualitynsrpqdata/)) that are applied downstream in Q*.

If a signal is purely a “link-counting thing,” it would typically be processed in a separate link-graph or PageRank pipeline rather than directly as a core component of this specific pre-computed quality/Qstar signal store. **There is minor link-related data present**, though it focuses on link quality/attributes rather than raw link counting (**`anchorMismatchDemotion`**: This is explicitly tied to links, as it is converted from `QualityBoost.mismatched.boost` (evaluating anchor text mismatch).)

Based on the provided attribute list, **this is fundamentally a quality and Q module, not a raw link-graph or PageLink calculation module.**

## Google Doesn’t Have an Overall Authority Score for websites

At the [23:00](https://www.youtube.com/watch?t=1380s) mark in a 2019 video, John Mueller addressed a question regarding a significant drop in organic traffic for a niche portal dedicated to people with fertility issues (a YMYL topic). Asking about a sudden drop in website authority for a fertility portal after a Google update and sought advice on how to improve it.

**The Question Asked:** The site owner reported that following a recent Google update, they lost more than 50% of their organic traffic across all articles and keywords. Despite having no technical or backlink issues, receiving positive user feedback, and operating a high-value service, they were concerned about how their “authority” could drop so drastically overnight and what actions they could take to increase it.
> **Quote:** “How could it be possible that our authority can drop more than 50% overnight? What actions could we take to increase our authority?”

John Mueller, Webmaster Trends Analyst at Google, clarified that Google does not assign a direct “authority score” to websites.
> **Quote:** “In general Google doesn’t evaluate a site’s authority. So it’s not something where we would like give you a score on for on authority and say this is the the general score for authority for your website.”

**John Mueller’s Response:** John clarified several key points regarding how Google evaluates websites ([23:47](https://www.youtube.com/watch?t=1427s) – [26:50](https://www.youtube.com/watch?t=1610s)):

- **No Authority Score:** He explicitly stated that Google does not assign a numerical “Authority” score to websites.
- **Algorithmic Adjustments:** Traffic drops often occur when Google updates its algorithms to better align search results with changing user expectations, increased competition, or a better understanding of site relevance. This is not necessarily a sign that the site is doing something wrong.
- **Focus on Quality:** Rather than chasing technical fixes, John suggested focusing on user experience. He recommended seeking honest, sometimes “hard” feedback from users or potential users to understand if there are areas where trust or relevance could be improved.
- **Community Input:** He encouraged engaging with the *Webmaster Help Forum* to get peer feedback, which can provide insights into how others perceive the site’s expertise and trustworthiness (E-A-T).

**Re: “How could it be possible that our authority can drop more than 50% overnight?”** Mueller was answering about a site losing 50% of their traffic. A lack of “Authority” doesn’t cause that. That sounds to me more like a [site quality scoring issue](https://www.hobo-web.co.uk/the-q-metric-google-quality-score/), and the fact that it’s in a YMYL medical space means the quality score needed to rank is always rising.

![The Google Algorithm Update Correction Hypothesis (Shaun Anderson, Hobo)](https://www.hobo-web.co.uk/wp-content/uploads/correction.png)

*The [Google Algorithm Update Correction Hypothesis](https://www.hobo-web.co.uk/the-google-algorithm-update-correction-hypothesis/) (Shaun Anderson, Hobo)*

## Domain Authority: Public Statements vs. Internal Reality

While third-party metrics have always been estimates, the conversation around whether Google uses a site-wide authority score has evolved significantly from early public denials to the reality exposed in the API leak.

### What Google Representatives Have Said

Before the internal documentation came to light, Google representatives carefully contextualised how they evaluated site-wide trust and topical focus without endorsing a singular “authority” metric.

#### 1. Paul Haahr (Senior Ranking Engineer at Google)

When asked directly about how Google measures authority and if there is a single domain-level metric, Haahr clarified that Google relies on a collection of signals.
> “**We have no one signal that we’ll say, ‘This is authority.’** We have a whole bunch of things that we hope together help increase the amount of authority in our results. Our goal in all of this is that we are increasing the quality of the pages that we show to users. Some of our signals are correlated with these notions of quality.”

- **Original Source:** [Search Engine Land Interview (2017)](https://searchengineland.com/google-authority-metric-274231)

#### 2. Matt Cutts (Former Head of Webspam at Google)

While actively avoiding validation of third-party metrics, Cutts confirmed that Google does look at site-wide topical authority to elevate rankings.
> “If you’re an authority in the medical space, we want to know that and to push you up higher whenever a medical query comes along. Now, this is not something that is done by hand… it applies to thousands of different topic areas… **if you are a topical authority, keep writing about it, keep developing, keep deepening the amount of content that you have.**“

- **Original Source:** [Pubcon Keynote Presentation (2013)](https://www.seobythesea.com/2013/11/hummingbird-author-rank-authority/)

#### 3. Gary Illyes (Webmaster Trends Analyst at Google)

When addressing the concept directly on social media, Illyes dismissed the industry’s obsession with a universal score, famously keeping it simple.
> “We don’t really have overall domain authority.”

- **Original Source:** [Twitter / X (2016)](https://x.com/methode/status/791619026652770304)

When we put Google’s explicit public quotes side-by-side with the leaked `siteAuthority` line, we find a complex reality.

Because of how carefully Google worded its statements, **many of their famous denials can be both proven technically true and proven completely misleading at the exact same time**.

### Quote 1: *“Google doesn’t use ‘domain authority’.”*

— John Mueller, 2016

- **Critics:** The leak exposes a backend field literally named `siteAuthority`. In ordinary English, “site authority” and “domain authority” mean the exact same concept: evaluating a whole website’s baseline weight based on backlinks. For years, Google used this specific phrasing to make the public believe it evaluated URLs *exclusively* on an isolated, page-by-page basis, which the code reveals is false.
- **Defence (Google was technically right):** When capitalised, “Domain Authority” (DA) is a proprietary, third-party trademark owned by the SEO company Moz. Google does not use Moz’s software, database, or metric. Furthermore, Moz’s metric relies entirely on external link graphs, whereas Google’s `siteAuthority` is an internal conversion of content quality metrics (`quality_nsr`). Google was using semantic loopholes to deny a *competitor’s brand name* rather than denying the *engineering concept*.

### Quote 2: *“My problem is that I don’t know of anything in ranking that would translate to ‘domain authority’…”*

— Gary Illyes, 2016

- **Critics:** It is incredibly unlikely that high-level engineers were entirely unaware of host-level scoring. The leak proves that `siteAuthority` translates directly into `Qstar`, which is a query-independent site-quality framework. There was an active structural system inside the algorithm explicitly tasked with translating site chunks into a unified quality score.
- **Defence (Google was technically right):** Gary specified that he didn’t know of anything that *translates* to the industry’s definition of domain authority. Because the industry assumes authority is just a cumulative tally of backlink numbers, and Google’s code shows its metric is a complex output of site chunk quality defaults (`default: nil`), Google’s systems don’t translate cleanly to what the industry was talking about.

### Quote 3: *“Each link counts for itself and each URL counts for itself, the links don’t add up to some overall authority metric that Google might use on the domain level.”*

— John Mueller (Paraphrased by [Seroundtable](https://www.seroundtable.com/google-links-domain-level-32837.html)), 2022

- **Critics:** The code shows that individual URLs are absolutely *not* entirely isolated from their domain’s health. The metric is pulled from `quality_nsr.SiteAuthority`. NSR stands for **[New Site Rank](https://www.hobo-web.co.uk/new-site-rank-nsr-googles-site-wide-quality-engine/), which explicitly groups individual pages together into broader “sitechunks”**. Google *does* aggregate data points at a host level to generate a macro integer that handles baseline trust.
- **Defence:** John explicitly stated that *links* do not add up to a domain-level score. The snippet supports this defence: `siteAuthority` is listed as a data type (`integer()`) applied inside `Qstar`. **The documentation does not state that this integer is generated by counting links; it states it is “converted from `quality_nsr`” (a system heavily reliant on site layout, content pattern tracking, and human quality evaluator benchmarks)**. John’s literal words remain accurate: links themselves are handled on a page level, even if a separate site-wide score exists.

## What is the siteAuthority attribute?

Based on the technical documentation for `GoogleApi.ContentWarehouse.V1.Model.CompressedQualitySignals`, we can consider the placement and likely function of the `siteAuthority` signal.

It is:

- **Contained in `CompressedQualitySignals`:** The attribute lives inside a message structure that houses per-document signals which are compressed and sent to **Mustang** and **TeraGoogle**.

- **TeraGoogle & Preliminary Scoring:** For TeraGoogle, this message is included directly in `perdocdata`, meaning it is explicitly designated to be used during **preliminary scoring**.

- **Storage Constraints:** The documentation explicitly notes a critical hardware constraint: *“For TeraGoogle, this data resides in very limited serving memory (Flash storage) for a huge number of documents.”*

- **The Attribute:** `siteAuthority (type: integer(), default: nil) - site_authority: converted from quality_nsr.SiteAuthority, applied in Qstar.`

- **Lineage (`quality_nsr`):** Its values derive from the New Site Rank (`quality_nsr`) framework, which evaluates site-level chunks rather than isolated page metrics.

- **Framework Application (`Qstar`):** It is applied directly within the $Q^*$ (Qstar) system, Google’s query-independent site-level trust and quality module.

- **It is a Pre-Computed Macro-Signal:** Because `siteAuthority` is stored in restricted Flash memory (`TeraGoogle`) alongside other compressed quality indicators (`pandaDemotion`, `unauthoritativeScore`, `scamness`), it is **not** calculated dynamically in real-time. It is a pre-computed integer score injected into the index to represent macro-level trust.

- **It may operate as an Early-Stage Gatekeeper:** Because it is available during “preliminary scoring” in Mustang and TeraGoogle, the search engine could use it as an efficient filter or baseline multiplier early in the retrieval pipeline. Sites lacking baseline trust can be filtered or down-weighted before the system expends heavy compute resources on deep query-dependent relevance matching ($T^*$).

- **It Represents a Blank Slate by Default:** The `default: nil` state confirms that unassessed URLs or new “sitechunks” do not start with an active penalty or a zero score; instead, they exist as unassigned data points until processed by the quality pipeline.

So what is siteAuthority?

Well, no one outside of Google actually knows yet, nor has any idea how much a signal this is.

Looking strictly at some initial responses to SiteAuthority by the SEO community and comparing it to what the tiny snippet of original text *actually* says, we can safely refute several claims made. Because the code snippet is only one line long, that initial summary filled in the blanks with industry assumptions. Here is exactly what we can refute from that first text:

### 1. Refute: “It calculates a persistent site-wide quality metric”

**Why we can refute it**: The snippet says the metric defaults to `nil`. If it were universally “persistent” and calculated for every site, it would not have a null/empty default state. Additionally, nothing in the line tells us it is “site-wide” or an evaluation of the *entire* domain; it simply shows it is a piece of data applied within `Qstar`.

### 2. Refute: “It assesses the overall trust, credibility… of an entire domain or subdomain”

**Why we can refute it**: The text doesn’t say what it assesses. It only says it is an `integer()`. Claiming it measures “trust” or “credibility” is an SEO industry interpretation, not a factual claim supported by the raw documentation text.

### 3. Refute: “The score is not a simple link counter; it aggregates multiple signals, including backlink profiles, user behaviour history, and topical focus.”

**Why we can refute it**: The snippet gives zero information about the ingredients of the score. We can completely refute the claim that the text *proves* it uses backlinks, user behaviour, or topical focus. The text tells us where the score goes (`Qstar`) and where it comes from (`quality_nsr`), but it says absolutely nothing about what inputs are used to calculate it.

### 4. Refute: “It acts as an initial gatekeeper before granular, real-time ranking takes place.”

**Why we can refute it**: The snippet only says it is “applied in Qstar.” It does not outline the chronological order of Google’s pipeline. It doesn’t state whether it acts as a “gatekeeper,” a tie-breaker, a multiplier, or a late-stage filter. Calling it an “initial gatekeeper” is a hypothesis.

### 5. Refute: “Maintaining a clear, cohesive topical radius helps stabilise and improve site-level authority metrics”

**Why we can refute it**: As established by the broader leak, topical metrics (like `siteFocusScore` and `siteRadius`) are completely separate fields from `siteAuthority`. The first summary incorrectly implied that changing your topical focus directly manipulates the `siteAuthority` integer, which the documentation does not state.

When we analyse what this specific line of documentation *cannot* prove, it works both ways. Just as we can refute overblown claims made by the SEO industry, we can also safely refute several major accusations and anti-Google conspiracy theories that emerged after the leak.

Based strictly on the text, several common accusations levelled against Google can be dismantled:

### 6. Refute: “Google executives lied under oath about using domain authority.”

**The Counter-Argument**: Critics accused Google of lying during antitrust trials when executives stated they didn’t use a domain authority score. However, looking at the exact text, `siteAuthority` is explicitly defined as a metric “converted from `quality_nsr`.”

**The Technical Difference**: Industry-standard tools use “Domain Authority” as a metric built almost entirely on *external backlink profiles*. Google’s code shows that their version is an internal translation of content quality systems (`quality_nsr`) applied to a query-independent quality gate (`[Q*](https://www.hobo-web.co.uk/the-q-metric-google-quality-score/)`). Google was technically telling the truth: they do not use a link-graph-based domain authority metric like the industry assumes.

### 7. Refute: “Google artificially manipulates the search results of specific brands using this score.”

**The Counter-Argument**: Some accused Google of using this metric as a manual override button to tank or boost specific companies based on corporate preference.

**The Technical Reality**: The code defines the field as an `integer()` with a `default: nil` state. This proves it is a standardised, automated data type handled systematically by an algorithmic pipeline. It is not an arbitrary tag, an editorial blacklist field, or a manual manipulation tool. It is an algorithmic component calculated programmatically across “sitechunks”.

### 8. Refute: “Google completely fabricated its public guidelines on E-E-A-T.”

**The Counter-Argument**: When the leak dropped, many critics claimed that Google’s public emphasis on [E-E-A-T (Experience, Expertise, Authoritativeness, and Trust)](https://www.hobo-web.co.uk/what-is-e-e-a-t-in-seo/) was just a PR distraction to hide how the actual algorithm works.

**The Technical Reality**: The line shows the metric is “applied in `Qstar`.” Deep-dive research and [Department of Justice (DOJ) trial exhibits](https://www.hobo-web.co.uk/google-vs-doj/) confirmed that `Q*` is the internal algorithmic scoring framework Google uses to measure site quality and credibility. Rather than contradicting E-E-A-T, the code confirms that Google built an active engineering architecture (`Qstar`) specifically to calculate and enforce those exact site-level quality concepts.

### 9. Refute: “Google penalises small websites by setting their authority to zero.”

**The Counter-Argument**: When independent publishers saw their rankings drop, accusations circulated that Google hardcoded a “zero authority” status for small blogs or new websites to protect massive media conglomerates.

**The Technical Reality**: Again, the text states `default: nil`. If Google intended to penalise or suppress unestablished sites systematically with this specific metric, the default data state would be zero or a negative integer. A `nil` value means the algorithm treats unassessed sites as an unwritten blank slate, shifting the ranking weight to other active systems rather than applying a structural demotion through this field. [4]

Based strictly on the lack of information in that specific one-line code snippet, you can use the exact same logic to refute a collection of wider industry assumptions and common optimisation myths.

Because the snippet says absolutely nothing about *how* the metric functions, several widespread claims about domain authority can be directly challenged:

### 10. Refute: “You can ‘fix’ a bad siteAuthority score by buying high-DA backlinks.”

**The Counter-Argument**: We cannot say that backlinks directly push this number up. The text does not link `siteAuthority` to link-counting modules like [PageRank](https://www.hobo-web.co.uk/is-google-pagerank-still-relevant-in-2026/). If the `Q*` system relies heavily on other data points – such as direct brand searches or Chrome traffic data – then dumping money into artificial backlink acquisition might have zero effect on this specific integer. Buying links can get you penalised by Google. I would not recommend it.

### 11. Refute: “New websites start with a siteAuthority of zero.”

**The Counter-Argument**: The code explicitly states `default: nil`. In computer science, `nil` (null) means the data point does not exist yet; it is completely unassigned. Starting with a blank slate (`nil`) is mechanically entirely different from starting with a baseline score of `0` on a scale. It implies Google handles unrated or fresh “sitechunks” using alternative rules rather than treating them as “low authority.”

### 12. Refute: “Low site-level authority causes algorithmic penalties or demotions.”

**The Counter-Argument**: The snippet says the metric is *applied* in `Qstar`, but it does not specify if it acts as a penalty metric. We can completely refute the claim that a low integer triggers a negative “penalty flag.” It is equally possible that `siteAuthority` acts purely as a positive multiplier for high-tier sites, leaving average sites completely untouched. [2]

### 13. Refute: “Changing your CMS, hosting provider, or URL structure resets your site authority.”

**The Counter-Argument**: Because the lineage points to `quality_nsr.SiteAuthority`, we know it is handled by the New Site Rank framework. However, the text contains no instructions on how Google maps a “sitechunk” to a specific server, IP, or platform. Claiming that technical infrastructure shifts instantly destroy or preserve this specific integer is an unsupported guess.

### 14. Refute: “Google updates your site authority score in real-time as you publish content.”

**The Counter-Argument**: The snippet proves the score is a static field processed within `Qstar` Google’s query-independent, static scoring system. Because it is separated from the real-time, query-dependent search loop, we can safely refute the idea that optimisation changes yield an instantaneous shift in this metric. It is built to be a slow-moving, structural baseline.

### 15. Refute: “Google has never researched or patented a domain authority metric” / “Site authority does not exist”

- **What a 2018 SEJ Article Said:** It concluded that an honest review of the facts proves “Site/Domain authority does not exist as a metric that is in use at Google”.

- **How It Can Be Refuted Post-Leak:** The API leak exposed literal backend attributes named `siteAuthority` (defined as being converted from `quality_nsr.SiteAuthority` and applied in $Q^*$), alongside `authorityPromotion` and `unauthoritativeScore`. While Google does not use *Moz’s* tool, the leak mathematically proved that an internal, persistent site-wide authority and quality architecture absolutely exists.

### 16. Refute: “The concept of site authority is nearly 20 years old and irrelevant”

- **What a 2018 SEJ Article Said:** It argued that early link-graph models like HITS and old site-authority concepts had long been discarded, deprecated, or updated out of modern search.

- **How It Can Be Refuted Post-Leak:** The leak revealed that modern systems like [**New Site Rank (NSR)**](https://www.hobo-web.co.uk/new-site-rank-nsr-googles-site-wide-quality-engine/) actively evaluate domains in aggregated sections or “sitechunks” to calculate host-level trust. Far from being obsolete, site-wide structural evaluation is deeply embedded in preliminary scoring systems like TeraGoogle and Mustang.

### 17. Refute: Google Representatives Were Giving Unfiltered Transparency

- **What a 2018 SEJ Article Said:** It treated Google spokespeople’s denials as blanket proof that no such metric or concept existed anywhere within Google’s infrastructure.

- **How It Can Be Refuted Post-Leak:** The leak exposed what I refer to as the “Trademark Trap”. Google engineers and liaisons could truthfully state “Google doesn’t use Domain Authority” because that specific capitalised term is a trademarked Moz product. By leaning on that technicality, they successfully deflected public scrutiny away from their own internal `siteAuthority` pipeline.

### Siteauthority: The Ultimate Takeaway

The leak exposes Google’s classic communication strategy: **Linguistic Precision**. It doesn’t expose lies by Google.

Google did not invent flat-out lies; instead, they routinely weaponised the industry’s loose terminology.

By defining “Domain Authority” strictly as a link-counting vendor score, they could safely tell the public they didn’t use it, all while their engineers maintained a field named `siteAuthority` to achieve, potentially a very similar goal.

---

![Shaun Anderson AKA Hobo Web: UK SEO Expert @Hobo_Web](https://www.hobo-web.co.uk/wp-content/uploads/shaun-anderson-seo-hobo_web-portrait-colour-1-scaled.jpg)

*Shaun Anderson AKA Hobo: @Hobo_Web*

***Disclaimer**: Note that this is not official advice from Google. It is an opinion. It is SEO theory based on my own primary analysis of Google patents and code leaks. Any article (like this) dealing with the Google Content Data Warehouse leak requires a lot of logical inference when putting together the framework for SEOs, as I have done with this article. I urge you to double-check my work and use critical thinking when applying anything about the leaks to your site. My aim with these articles is essentially to confirm that Google does, as it claims, try to identify trusted sites to rank in its index. The aim is to irrefutably confirm white hat SEO has purpose in 2026 – and that purpose is to build high-quality websites.*

*The Google API leak exposes data structures and protocol buffers, not the live executing C++/Elixir code or algorithmic weights. Take for example `siteQualityStddev`; While the attribute exists, no one outside Google knows its exact mathematical multiplier in real-time query retrieval. Treat most leaked parameters similarly. Some parameters listed may be inactive or superseded in production. Modern search models (like RankEmbedBERT) don’t use fixed C++ formulas at all. They rely on neural network weights trained on millions of interactions. You can’t “decode” a neural network’s decision-making just by looking at its input schema. Also note I only discuss sales, editorial and marketing-related attributes. I do not explore attributes tied to Abuse, Sensitive or Inappropriate classifiers in documents in any of my writings (and will not). (My thesis builds on this: **“There was a leak of Google documents which named certain components of Google’s ranking system, but the documents don’t go into specifics of the curves and thresholds“** – The most direct and significant acknowledgement of this is from within the context of the DOJ’s antitrust litigation based on a call dated February 18, 2025, with Google Engineer HJ Kim). **I view the leaks as an architectural map of possibilities, not a cheat code**. I suggest you do the same. Feedback and corrections welcome.*

***Disclosure**: I use generative AI when specifically writing about my own experiences, ideas, stories, concepts, tools, tool documentation or research. My tool of choice for this process is Google Gemini Pro 2.5 Deep Research and later models. I have over 25 years of experience writing about [accessible website development](https://www.hobo-web.co.uk/design-website-for-blind/) and SEO (search engine optimisation). All content was conceived, edited, and verified as correct by me, [Shaun Anderson, aka Hobo](https://www.hobo-web.co.uk/shaun-anderson/) (and is under constant development). Corrections and contributions welcome. See my [AI policy](https://www.hobo-web.co.uk/editorial-policy/#:~:text=9.%20Use%20of%20Generative%20AI%20on%20the%20Site).*

[#](https://www.hobo-web.co.uk/what-is-site-authority-the-siteauthority-signal-in-the-google-leak/ "Scroll back to top")

Close GDPR Cookie Settings

![Hobo](https://www.hobo-web.co.uk/wp-content/plugins/gdpr-cookie-compliance/dist/images/gdpr-logo.png)

- Privacy Overview

- Strictly Necessary Cookies

[Powered by GDPR Cookie Compliance](https://wordpress.org/plugins/gdpr-cookie-compliance/)

Privacy Overview

This website uses cookies so that we can provide you with the best user experience possible. Cookie information is stored in your browser and performs functions such as recognising you when you return to our website and helping our team to understand which sections of the website you find most interesting and useful.

Enable All

Save Settings
