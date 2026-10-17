---
title: "Google Search Central Live Deep Dive, Barcelona - Day 2 Recap | We Are ROAST"
topic_id: "55521552241512244"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-06T00:24:06.528+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#", "#Geo#"]
original_urls: ["https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/"]
---

# Google Search Central Live Deep Dive, Barcelona - Day 2 Recap | We Are ROAST

- 发布时间：2026-10-06T00:24:06.528+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/55521552241512244)
- 标签：#SEO##Geo#

## 星球正文

Google Search Central Live Deep Dive, Barcelona - Day 2 Recap | We Are ROAST

Google 巴塞罗那活动第二天,主题是索引:页面被抓到之后,Google 怎么判断页面上有什么、要不要收进索引。

要点:
1. Googlebot 渲染页面时用的视口大约 10,000 像素高,而且不滚动、不点击。要等用户滚动或点击才加载的内容,Google 看不到。
2. Google 工程师 Ryan Levering 说,结构化数据(schema)经过清洗过滤后,要么用在普通搜索结果里,要么作为 AI Overviews 和 AI Mode 的参考上下文——不是当代码用,而是把文字加进上下文。加 schema 从来不会有坏处,问题只是值不值得花这个工夫。
3. Google 更看重页面主体内容,导航、页脚、侧边栏不算重要内容。John Mueller 建议想在 Google 里获得最大展示的站点用 max-image-preview:large 和 max-snippet:-1 这两个 robots 指令。
4. 两个社区案例:有人用 AI 批量生成图片 alt 文本,上线后表现下降;另一个案例把两个品牌站合并成一个,页面从 2,000 减到 100,流量没掉,收入上升(演讲者自述)。

原文:[https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/](<https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/>)

## 外部原文

### 原文 1

- 来源：<https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/>
- 抓取时间：2026-10-17T02:39:12.452727+00:00
- 状态：已获取原文页面

---
canonical: https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/
meta-article:modified_time: 2026-10-07T09:31:16+00:00
meta-article:published_time: 2026-10-01T16:13:29+00:00
meta-author: John Campbell
meta-cdp-version: 1.5.7
meta-description: Google Search Central Live Deep Dive, Barcelona - Day 2 Recap. A review of the second day all about indexing.
meta-msapplication-TileImage: https://weareroast.com/wp-content/uploads/2025/06/favicon.ico
meta-og:description: Google Search Central Live Deep Dive, Barcelona - Day 2 Recap. A review of the second day all about indexing.
meta-og:image: https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_130312845-e1790931032358.jpg
meta-og:image:height: 2047
meta-og:image:type: image/jpeg
meta-og:image:width: 3067
meta-og:locale: en_US
meta-og:site_name: We Are Roast
meta-og:title: Google Search Central Live Deep Dive, Barcelona - Day 2 Recap | We Are ROAST
meta-og:type: article
meta-og:url: https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/
meta-robots: index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1
meta-twitter:card: summary_large_image
meta-twitter:data1: John Campbell
meta-twitter:data2: 1 minute
meta-twitter:label1: Written by
meta-twitter:label2: Est. reading time
meta-viewport: width=device-width, initial-scale=1, maximum-scale=5
title: Google Search Central Live Deep Dive, Barcelona - Day 2 Recap | We Are ROAST
---

[ROAST](https://weareroast.com)

[![SVG Image] Back to news](https://weareroast.com/news)

# Google Search Central Live Deep Dive, Barcelona – Day 2 Recap

Events ![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_130312845-e1790931032358.jpg)

[![Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page.](https://weareroast.com/wp-content/uploads/2026/01/john-campbell-square.jpg)](https://weareroast.com/author/john-campbell/)

[John Campbell](https://weareroast.com/author/john-campbell/)

•

01 October 2026

Events ![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_130312845-e1790931032358.jpg)

Day 2 of Google’s Search Central Live Deep Dive in Barcelona was all about indexing: once Google has crawled a page, how does it decide what’s on it and whether it goes in the index?

The day covered text and multimedia, then closed with a look inside the index itself and Google Trends.

If you missed it, here’s my [Day 1 recap on crawling](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-1-recap/).

Below are the key insights from each session, in the order they ran.

## How HTML is interpreted and controlling indexing

The day opened with Gary Illyes and Cherry Prommawin answering questions left over from Day 1.

First new session up was how HTML is interpreted. A simple overview to set up the rest of the day.

John Mueller then kicked off the main sessions with controlling indexing. He went through each of the robots meta tags, from the basics like `noindex`, `none` and `all` to lesser-known ones like `max-snippet` and `max-video-preview`.

His final recommendation was to use two directives if you want to be as visible as possible in Google:

```
<meta name="robots" content="max-image-preview:large, max-snippet:-1">
```

The first allows large image previews. The second lets Google show as long a text snippet as it wants.

## Rendering pages to index what users see

Erin Sparling from Google then moved on to JavaScript. More and more of the modern web is built with it, so Google has to render pages to see what users see.

The session gave a basic overview of Google’s rendering pipeline.

![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_090930502.MP_-345x345.jpg)

Rebecca Yu’s talk on finding and debugging JavaScript rendering problems.

![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_102519990-345x345.jpg)

Tobias Schwarz’s canonical tag examples, with charts that make the problems easier to understand.

### Lightning session D: rendering and JavaScript

Then it was over to the community speakers to show some real-life examples of where it can go wrong with JS.

**Sören Bendig, CEO at Audisto: Uncover Common Website Rendering and JavaScript Execution Blind Spots**

Sören showed examples from real sites of common problems with JavaScript. The kind that stop Google rendering a page the way users see it.

**Rebecca Yu: debugging rendering**

Rebecca had great tips on common rendering problems and how they show up. The top one was robots.txt blocking the resources the JavaScript needs to run.

E.g. if your JS files are disallowed, Google can’t build the page, even though it looks fine in a browser to the user.

**Natalia Venditto, Adobe: reframing**

Natalia finished the session with a new approach called reframing, which would allow AI-generated apps to be embedded into a website.

A very technical talk. There’s a push to make it a web standard, so one to watch.

## What is Google-friendly JavaScript

Erin came back after the lightning talks to explain how it all fits together.

The stand-out detail was the viewport. Google loads pages with a viewport around 10,000 pixels tall, and it doesn’t scroll or click things on the page.

So any JavaScript that waits for the user to scroll or interact or click won’t run. E.g. content that only loads on a scroll event won’t be seen.

Erin then went into detail on the common problems the community speakers had raised, and how they look from Google’s side.

## Understanding what’s on a page

Gary Illyes covered how Google works out what’s actually on a page.

Content in the main part of the page is given more importance. So anything in the navigation, footer and other boilerplate isn’t seen as important.

E.g. on a blog post, the title and body text matter. The categories list in the sidebar doesn’t. It’s all about what’s in the main section of the page.

He also explained how words are tokenised and given extra metadata, e.g. whether they sit in the main content. AI models work differently, turning words into number IDs instead.

He finished with soft 404s: pages that return a 200 OK but look like an error or empty page.

## Handling web duplication

John Mueller came back to cover duplication.

Google first clusters similar pages together, picks one as the canonical, then assigns all the signals to that main page. The reasons he gave:

- Stop duplicate content appearing in results
- Leave more room to store unique content
- Keep the signals from every version
- Understand alternative versions of a page, e.g. hreflang, branding changes and migrations

That last point is why a `site:` search on an old domain can still show results after a migration.

He finished with his suggestions for handling duplicates:

1. Use redirects for site migrations.
2. Use HTTP result codes. Don’t block agents.
3. Check your rel=canonical links.
4. Use hreflang links to help Google localise.
5. Report weird canonicals in the forums.
6. Make secure pages that work.
7. Keep canonical signals clear.

### Lightning session E: duplicates and site moves

The lightning talks closed the morning.

**[Tobias Schwarz](https://www.linkedin.com/in/schwarztobias/): canonical problems**

Tobias showed examples of poor canonical setups, e.g. canonical loops and clusters with no clear canonical leader.

He used a visualisation to show the problem to people. A useful view when you need developers or stakeholders to see the issue.

**Martyna Ağanoğlu, SEO Specialist at Loando / Clar: Domain & Portal Consolidation**

Martyna talked through merging two brands. Two domains went into one, with a new site launched at the same time.

The site went from 2,000 pages to 100. There was no traffic drop, and revenue went up.

**David Carrasco Pamies, SEO Consultant and Founder at Magnify: SEO for M&A Migrations**

David’s point was that the hard part of a migration isn’t the migration. It’s the people.

## Structured data: finding the gold nuggets

After lunch, Gary Illyes covered how Google finds the gold nuggets on a page. Images, structured data and video are pulled out and passed to a separate media indexing engine.

Ryan Levering, a software engineer at Google, then explained what structured data is and why the web needs it.

The interesting part was where it goes. Schema.org data is cleaned and filtered, then either shown in normal search results or used as context for AI Overviews and AI Mode.

The text in your schema is passed along with the content on the page. So it does feed Google’s AI features – not as code but added to context.

His view on whether to add it was simple. It’s never a negative to have structured data. The question is whether it’s worth the effort.

The new schema updates are focused on shopping, with more coming on Day 3. Server-side validation of structured data is also coming soon.

## Images and video

Gary Illyes came back to go deeper on images and video.

**Images.** He walked through how Google extracts images from a page. A few practical points:

- **Image sitemaps** are worth looking at. They’re the best way to tell Google about images, especially ones loaded by JavaScript.
- **Use the `<picture>` element** for responsive images. Google picks the most appropriate one, but it needs an `<img>` inside as a fallback.
- **Use WebP or AVIF,** and keep file sizes not too big, just right.

**Video.** If you embed video, put it above the fold so it’s easy to see, especially on mobile. Add descriptive text around it, as that gives Google the context.

A video sitemap helps Google find embedded videos too, with the title, description, thumbnail and playback URL.

### Lightning session F: media

**Irene Cecotti, SEO/AEO Lead at PhantomBuster: Oops I did it again, how scaling alt text with AI lost my traffic**

Irene was open about a mistake. She used AI to generate image alt text at scale, through Screaming Frog.

Performance dropped after the AI descriptions went live. A good reminder that faster isn’t the same as better, and that AI output at scale still needs checking.

**Patrick Domanico, Technical SEO Manager & Freelance Journalist at dentsu: Prompt Journalism & Search**

Patrick showed how he uses AI to edit interview transcripts ready for publication. E.g. cleaning up and formatting them, so interviews, podcasts and video become content that can be found in search.

## Internationalisation and localisation

Cherry Prommawin picked up international SEO. She covered the common hreflang mistakes:

- Using more than one method to implement hreflang at the same time
- Not using the correct language codes

She also made the point that localisation is more than translating the content. Local details like date formats and currency need to change too.

### Lightning session G: internationalisation

**Alizée Baudez, International SEO Consultant: International SEO before the first hreflang tag**

Her example was a furniture company. Sales in the Netherlands were lower than in France, even though the translation was good.

The reason was the homes. Dutch houses tend to be narrow and over several floors, while the French ones in her example were wider and over two. The products and imagery didn’t fit how Dutch customers live.

So think beyond the technical side. Hreflang gets the right page to the right market, but the page still has to make sense there.

**Elham Borojerdi, SEO & GEO Strategist, and Zahra Laleh, SEO Strategist: The Challenges of Multilingual SEO for Non-Latin-Script Languages**

Elham presented for both of them, looking at languages like Persian and Arabic.

Similar-looking characters in those scripts can change the results of keyword research. E.g. two spellings that look almost the same to a non-native speaker can be different searches.

She also said some tactics that might be seen as old-school SEO still work in those markets. Google updates tend to reach them later.

![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_142745359-345x345.jpg)

Gary Illyes explained how posting lists are used to return results from the index.

![](https://weareroast.com/wp-content/uploads/2026/10/PXL_20261001_130653869-345x345.jpg)

My poster session on using the URL Inspection API to monitor indexing of your site.

## My poster session

Mid-afternoon was the poster session, where I presented [Google Inspection API Tool](https://weareroast.com/resources/tools/google-inspection-api-tool/).

It’s a free Google Sheet that uses the Search Console Inspection API to check the indexing status of your URLs every day. It’s the URL Inspection Tool, but for hundreds or thousands of pages, on a schedule.

It works within Google’s limit of 2,000 inspections per site per day, and tracks changes over time. E.g. when a page drops out of the index, or Google picks a different canonical.

The conversations ran on, so I missed the next few sessions. That covered calculating signals, deciding what goes in the index, lightning session J and the indexing edition of “What would you do?”.

## What the index looks like, and Google Trends

Gary Illyes then showed what the index actually looks like.

Results are retrieved through posting lists. Your query is split into separate words, each word points to a list of pages, and Google matches the pages that appear across the lists.

E.g. “embed a robots.txt file into an audio file” becomes embed, robots.txt, file and audio, each with its own list of URLs. Vector embeddings are used alongside this too.

## Google Trends

Omri Weisman, Engineering Manager on Google Trends, started with a quiz of some very hard questions based on what people have been searching for and thus appearing in Google Trends.

Omri then went through the tools within Google Trends, explaining how the data needs to be read carefully. Look at the anomalies in the data. A spike might come from another search that’s related to yours, not the term itself. Overall drops might not relate to a drop in search demand.

Trending Now data is fresh to within 10 minutes. That makes it useful for spotting reactive content gaps.

The new features in Google Trends:

- **Gemini in Explore:** suggests search terms and compares relevant trends, up to 8 terms at once
- **Quick comparisons** across time periods
- **Maps:** worldwide data down to sub-regions
- **Category filter:** back again in the new report.

A bonus tip: trends.google.com/tv gives you a live Trends screen for a TV. Worth putting up in the office.

There was no mention of the Trends API going public (later in the Q&A there was also no update).

## What’s next

Day 3 is the final day, covering serving, ranking and AI features in Search. Ryan Levering also hinted at more shopping schema news, so that’s one to watch.

If you haven’t read it yet, catch up on my [Day 1 recap on crawling](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-1-recap/).

Events

Share

[![SVG Image]](https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fweareroast.com%2Fnews%2Fgoogle-search-central-live-deep-dive-barcelona-day-2-recap%2F) [![SVG Image]](https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fweareroast.com%2Fnews%2Fgoogle-search-central-live-deep-dive-barcelona-day-2-recap%2F) [![SVG Image]](https://x.com/share?url=https%3A%2F%2Fweareroast.com%2Fnews%2Fgoogle-search-central-live-deep-dive-barcelona-day-2-recap%2F) [SVG Image Link copied!](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/)

![Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page.](https://weareroast.com/wp-content/uploads/2026/01/john-campbell-square.jpg)

John

Campbell

ROAST Head of Innovation

Previously Head of SEO at ROAST, John founded Rabbit & Pork as the fourth agency and Voice Experience arm of TIPi Group. John now also stepped into Head of Innovation at ROAST, creating ROAST LABs and ensuring we are at the forefront of technological advances.

[SVG ImageJohn’s articles](https://weareroast.com/author/john-campbell/)

## Related Articles

[View all news](https://weareroast.com/news/)

![SVG Image]

![SVG Image]

- [ROAST named Independent Agency of the Year at the UK Agency Awards 2026 Black stylized letter T logo centered on a bright yellow background. The bold minimalist design uses thick vertical and curved lines to create a modern brand mark with strong contrast and high visibility. ROAST • 05 October 2026 Agency News](https://weareroast.com/news/independent-agency-of-the-year-uk-agency-awards-2026/)
- [How Often Does Google Recrawl Pages? Real Data from the ROAST Website Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page. John Campbell • 07 October 2026 SEO](https://weareroast.com/news/how-often-does-google-recrawl-pages-real-data-roast/)
- [Google Search Central Live Deep Dive, Barcelona - Day 3 Recap Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page. John Campbell • 02 October 2026 Events](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-3-recap/)
- [Google Search Central Live Deep Dive, Barcelona - Day 2 Recap Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page. John Campbell • 01 October 2026 Events](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-2-recap/)
- [Google Search Central Live Deep Dive, Barcelona - Day 1 Recap Close up headshot of a man with short light brown hair and a neatly trimmed beard wearing a dark blue button down shirt against a black background. He looks directly at the camera with a subtle smile, creating a professional and approachable portrait suitable for a team bio or company about page. John Campbell • 30 September 2026 Events](https://weareroast.com/news/google-search-central-live-deep-dive-barcelona-day-1-recap/)
- [Five standout themes from Agency and Procurement in Honest Conversation: AI & ROI Black stylized letter T logo centered on a bright yellow background. The bold minimalist design uses thick vertical and curved lines to create a modern brand mark with strong contrast and high visibility. ROAST • 28 September 2026 Events](https://weareroast.com/news/five-themes-from-agency-and-procurement-in-honest-conversation/)
- [Adapting SEO Keyword Research Using ICPs Michael Louderback • 04 September 2026 Resources](https://weareroast.com/news/adapting-your-keyword-research-icp/)
- [Agency and Procurement in Honest Conversation: AI & ROI Black stylized letter T logo centered on a bright yellow background. The bold minimalist design uses thick vertical and curved lines to create a modern brand mark with strong contrast and high visibility. ROAST • 28 August 2026 Events](https://weareroast.com/news/agency-procurement-ai-roi-breakfast/)
- [How to Measure Generative Engine Optimisation (GEO) Visibility Smiling woman with long brown hair wearing an orange turtleneck jumper, posed against a black background. Isabelle Abraham • 26 August 2026 AI measuring tape with an orange background](https://weareroast.com/news/how-to-measure-generative-engine-optimisation-visibility/)
- [E-E-A-T in the Age of LLMs: What Signals Still Drive Trust Kiyana Bissasser • 12 August 2026 AI Featured image of The Ultimate Guide to Google’s New Partner Status Requirements article](https://weareroast.com/news/e-e-a-t-llms-trust-signals/)

![SVG Image]

## Let's work together.

![Upward view of tall evergreen trees stretching toward the sky, with slender trunks rising from the forest floor and green canopies forming a natural circle overhead. The perspective emphasizes the height and density of the woodland, capturing the peaceful atmosphere of a sunlit forest canopy.](https://weareroast.com/wp-content/uploads/2025/11/RST_Contact-330x438.jpg) [SVG Image Let's work together.](https://weareroast.com/contact-us/)
