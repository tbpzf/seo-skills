---
title: "Content Effort: The Google Ranking Feature Nobody Talks About"
topic_id: "82258225852888512"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-06T16:40:52.622+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#", "#写作#"]
original_urls: ["https://signal.zyppy.com/p/content-effort"]
---

# Content Effort: The Google Ranking Feature Nobody Talks About

- 发布时间：2026-10-06T16:40:52.622+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/82258225852888512)
- 标签：#SEO##写作#

## 星球正文

Content Effort: The Google Ranking Feature Nobody Talks About

作者 Cyrus Shepard 以前做过 Google 质量评分员，这篇讲 Google 评估页面时看的 “Effort（用心程度）”。核心结论：Effort 不是你花了多少时间、写了多少字，而是页面上能看到的“有用工作的证据”。

要点：
1. Google 质量评分员指南对 Effort 的定义是：一个人在多大程度上主动投入去做出让人满意的内容；把现成内容丢进翻译软件批量生成几千页、没人审核，就不算有 Effort。作者称指南里 Effort 出现了 100 多次。
2. 2024 年泄露的 Google API 文档里有两个相关字段：contentEffort（“基于 LLM 的文章页 Effort 估算”）和 ugcDiscussionEffortScore（UGC 页面质量信号）。作者也承认不知道 Google 是否真的在用。
3. Effort 不是：字数、制作耗时、“人写的一定比 AI 写的好”。作者把指南归成几类信号：有没有人认真挑选和编排；自动化有没有加东西进去（自有数据、真实评价、原创图片）；有没有原创事实和观点而不是复述网上常识；有用信息有没有放在前面而不是先堆 600 字背景；讨论有没有深度。
4. 发布前 5 个自查问题：内容是不是围绕用户目标编排的？有没有别处没有的一手信息？有没有展示工作证据（方法、实拍、截图、访谈）？有没有超出网上随手能查到的常识？该给观点的地方有没有基于证据的判断？

结论：低成本批量 AI 内容正在被算法打掉，与其拼字数，不如在页面上留下“真做过”的证据。

原文：[https://signal.zyppy.com/p/content-effort](<https://signal.zyppy.com/p/content-effort>)

## 外部原文

### 原文 1

- 来源：<https://signal.zyppy.com/p/content-effort>
- 抓取时间：2026-10-17T02:41:24.933559+00:00
- 状态：已获取原文页面

# Content Effort: The Google Ranking Feature Nobody Talks About

### Effort isn't how hard you worked - Google cares about evidence of unique value

[Cyrus Shepard's avatar](https://substack.com/@zyppy)

[Cyrus Shepard](https://substack.com/@zyppy)

Aug 13, 2026

![SVG Image]

29

![SVG Image]

3

Share

[Home](https://signal.zyppy.com/) | [AI SEO Marketing](https://signal.zyppy.com/t/ai-seo-marketing) | [Pro Templates](https://signal.zyppy.com/t/pro-templates)

*👋 Subscribe free (it helps me produce research like this) and get the **7-Step AI Citation Checklist** with tips + tactics on how to win more SEO/AI visibility.*

When I worked as [a Google Quality Rater](https://zyppy.com/seo/google-search-quality-rater/), we were required to evaluate every webpage we scored on **effort**, alongside originality, talent/skill, and accuracy.

What exactly is “effort”*,* and *why is it so important?*

Google’s definition isn’t what you think it is.

Effort ≠ work.

For the uninitiated, it may seem strange for Google to evaluate pages on subjective factors like effort and talent. *How can Google possibly know how much effort you put into a page?*

In truth, they don’t.

But they can very easily *estimate it—and with a high degree of accuracy*—based on strict standards and the **evidence visible on your page**. Google can draw on thousands of human-rated documents, machine-learning trained at scale, and now AI to assess the “quality” signals of virtually any webpage you publish.

And over the past ~20 years, they’ve gotten *very, very good at it.*

SEO tools typically focus on things like **keywords** and **topical relevance**, but there’s a strong case that “subjective” features—such as effort—are equally, and possibly more, important in Google’s eyes.

In the age of low-effort, **scaled AI content** [getting algorithmically decimated](https://lilyraynyc.substack.com/p/it-works-until-it-doesnt-ai-content-risks), *understanding “high-effort” is increasingly relevant to brands*.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!3GCh!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F4644ed34-ffbb-4b00-b147-5172a99e4be8_2001x2660.png)

*[Graphic by Shepard Design](https://shepardportfolio.com/)*

Here’s how Google defines “effort” in its Quality Rater Guidelines.
> **Effort**: *Consider the extent to which a human being actively worked to create satisfying content. Effort may be direct, such as a person translating a poem from one language to another. Effort may go into designing page functionality or building systems that power a webpage, such as the creation of a page that offers machine translation as a service to users. On the other hand, the automatic creation of thousands of pages by running existing freely available content through existing translation software without any oversight, manual curation, etc., would not be considered to have effort.*

The Rater Guidelines then go on to give exhaustive examples of both high and low-effort webpages. *Effort is mentioned over 100 times.*

Most interestingly, the **Google API leak** exposed two data points that specifically reference Effort scoring.

- `contentEffort` - LLM-based effort estimation for article pages

- `ugcDiscussionEffortScore` - UGC page quality signals.

To be fair, we don’t know how (or even if) Google uses these metrics. But it’s obvious from documentation, public statements, and data leaks that Google spends a lot of time thinking about, evaluating, and scoring content effort.

Understanding how Google *evaluates* effort can help us produce content with a better chance of ranking highly.

### ***SEO Nerd Section (feel free to skip)***

In the [Google API leak](https://google-api-content-warehouse.hexdocs.pm/0.4.0/api-reference.html), both `contentEffort` and `ugcDiscussionEffortScore` sit inside the `compressedQualitySignals` structure, which are page-specific signals that “can be used in preliminary scoring.”

This structure contains other seemingly important fields such as `lowQuality` and `siteAuthority`, among others.

The docs indicate that `contentEffort` is produced by an LLM, which may be separate from the quality scoring performed by Quality Raters. Finally, `contentEffort` is defined as a **floating-point number**, which indicates an actual numeric score.

Finally, it’s important to note that Google almost always mentions Effort in the same context as Originality and Talent/Skill. These concepts overlap heavily in the Quality Rater Guidelines.

## How Google Defines “Effort”SVG Image

Before we understand what effort is, it’s important to know what it *isn’t*. Effort is not:

- Word count

- Time spent creating page

- Human-written content > AI

The key is this: *effort is not how much work you actually put into a page*. It’s more about the **evidence of useful work** that *ends up on the final page*.

So what kind of on-page evidence does Google look for? I’ve classified all the instructions and examples from Google’s guidance into 7 signals of “effort”.

### 1. Curation and EditingSVG Image

A low-effort page is a collection of information with little human involvement. A high-effort page means a human carefully chose (curated) what information was important and organized it in a way that was useful.
> **Low-effort curation**: A large collection of chicken recipes scraped from other sites.
>
> **High-effort curation**: A collection of chicken recipes personally tested by the author, organized by popularity and taste.

### 2. Low-Quality Automation vs Added ValueSVG Image

Using AI (or any other form of automation) to help generate content isn’t necessarily bad. That said, when it’s done at scale to create content with **little added value** compared to other content, that’s a recipe for disaster.

High-effort pages typically contain at least some elements that AI or automation can’t easily replicate, such as:

- Information from **proprietary databases** (e.g., product catalog)

- Human **evaluation** and perspectives

- High-quality **user-generated content**

- Unique **images** and other media

- Authentic **user reviews**

The key point here is not to punish automation, but to identify the **value-add**. High-effort pages must add *value* that’s not easily automated.
> **Low-effort automation**: 5,000 location pages generated from the same template with city names swapped in.
>
> **High-effort automation**: Automated movie recommendation pages generated with *real user reviews* from an owned app, along with *proprietary real-time ticket data*.

### 3. Recycles Information vs Original Facts and PerspectivesSVG Image

Google’s move toward [“non-commodity” content](https://www.linkedin.com/posts/cyrusshepard_what-kind-of-website-is-likely-to-survive-ugcPost-7455307053746610176-mTAV/) represents one of the most significant algorithmic shifts we’ve seen in years.

To put it simply: **low-effort content** uses the same facts and information that can be found elsewhere on the web. It’s the type of content most easily reproduced by anyone with access to AI, Google, and Wikipedia. Low-effort pages *summarize what others say with commonly known facts*.

High-effort content, on the other hand, contains **original facts** (gained through your own experience) and **unique** **perspectives/opinions**. This is also known as [first-party information](https://signal.zyppy.com/p/content-google-zero), as the value of the content comes from the creator of the webpage.

High-effort pages often contain **unique facts** gained *through first-hand experience*.

### Recycled Media vs High-Effort Media

Importantly, **images and video** count as content too.

Recycled images and videos “borrowed” from other sites, and/or stock images and video, can be considered low-effort. This applies to images or videos that have been slightly altered.

High-effort media includes **detailed, high-quality photography** and original video. High-quality photography doesn’t gaurentee high rankings, but it does show you put the work in.
> **Low-effort information**: A page titled “10 Best Protein Powders” describes 10 popular powders without any original research or testing.
>
> **High-effort information**: A similar page titled “10 Best Protein Powders We’ve Tested” describes the user’s experience, testing methods, experiment results, opinions, and richly detailed photos of each product.

### 4. Filler content vs. Prominent Helpful ContentSVG Image

Here’s how Google defines “filler”:

*…low-effort content that adds little value and doesn’t directly support the purpose of the page. Filler can artificially inflate content, creating a page that appears rich but lacks content website visitors find valuable.*

SEOs used to (and sometimes still do) try to improve their keyword “relevance” by writing paragraphs of keyword-rich text that targeted **topical authority** but *contained little original information.*

Even worse is when this filler content sits at the top of the page in order to increase ad views or time-on-site.

**High-effort content**, in contrast, places the most useful, unique information prominently *where it can quickly solve a user’s problem*.
> **Low-effort filler**: A page titled “How to boil an egg?” begins with 600 words about the history and nutritional value of eggs.
>
> **High-effort content**: A similar page titled “How To Boil An Egg Perfectly Every Time” gives important facts up-front, followed by useful supplementary information such as egg size, altitude adjustments, and yolk firmness.

### 5. Shallow Discussion vs. Quality DiscussionSVG Image

“Discussion” is an interesting angle for Google to evaluate because it seems Google wants to reward pages that go beyond merely presenting facts - Google wants people’s **perspective** on things.

High-effort discussion means evidence is carefully considered, and an **opinion**—*or judgment*—is rendered based on that evidence.

Interestingly, Google seems to evaluate effort differently based on the type of page, specifically if the page is User Generated Content (UGC). From the Rater Guidelines:

*For pages like social media posts or forum discussions, the level of participation and depth of conversation is an important part of effort. Contributions from multiple individuals on such pages can add up to a significant amount of total human effort.*
> **Low-effort discussion**: A Reddit post titled “Anyone else allergic to butter?” gets a single reply: “Yep, me”
>
> **High-effort discussion**: A page title “Best Hiking Boots for Women” describes features and experiences from wearing each boot, along with **in-depth perspectives and opinions** which inform the final recommendations.

*👋 Subscribe free (it helps me produce research like this) and get tips + tactics on how to win more SEO and AI visibility.*

## How to Create High-Effort Pages: Two-Minute AuditSVG Image

At the risk of repeating myself: effort *is not how much work you put into content creation*, but the **on-page evidence** that you created satisfying, unique content.

Before creating or publishing content, perform the following checks:

**==1. Is the content edited and curated thoughtfully?==**

Is the content organized around the user’s goal, with the most valuable content easy to find?

**==2. Did you add something unique that doesn’t exist elsewhere?==**

**First-party information** is critical. This can include original data, facts, observations, and even opinions and perspectives.

**==3. Does the content show evidence of work?==**

Explaining your methodology, high-quality photos, screenshots, interviews, and observations *all provide evidence that you actually have experience*.

**==4. Does the content go beyond common facts?==**

If someone else could easily reproduce your content simply by researching the internet, it’s likely considered low-effort. Explain **details** or **edge cases** if you need to dive deeper into a subject matter.

**==5. Does the content provide deep discussion?==**

To be clear, not every webpage requires discussion (e.g., current stock prices), but for many topics, **personal perspectives** that explore evidence and offer carefully crafted perspectives can elevate content to “high-effort.”

## **Paid subscriber bonus: Content Effort Audit**SVG Image

I built a quick scoring system based on the effort signals covered above. You can use it to score a page from 0–100, identify any “effort” gaps, and get ideas for what to add.

It also includes 50+ examples of visible evidence of effort and playbooks for reviews, how-tos, travel, research, ecommerce, local pages, and more. You can find it in [Pro Templates](https://signal.zyppy.com/t/pro-templates).

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!Ue8C!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F29ac7071-adeb-4bcd-b35d-5f7e8dd2bd13_1254x687.png)

![SVG Image]

29

![SVG Image]

3

Share

![SVG Image]Previous

Next![SVG Image]

No posts
