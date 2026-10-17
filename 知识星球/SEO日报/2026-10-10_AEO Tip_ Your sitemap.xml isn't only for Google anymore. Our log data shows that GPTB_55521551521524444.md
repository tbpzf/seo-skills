---
title: "AEO Tip: Your sitemap.xml isn't only for Google anymore. Our log data shows that GPTBot + ClaudeBot crawl the sitemap.xml A LOT"
topic_id: "55521551521524444"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-10T00:05:52.619+0800"
author: "虾虾"
type: "talk"
tags: ["#Geo#", "#Tips#"]
original_urls: ["https://www.linkedin.com/feed/update/urn:li:share:7513963315136495616/"]
---

# AEO Tip: Your sitemap.xml isn't only for Google anymore. Our log data shows that GPTBot + ClaudeBot crawl the sitemap.xml A LOT

- 发布时间：2026-10-10T00:05:52.619+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/55521551521524444)
- 标签：#Geo##Tips#

## 星球正文

AEO Tip: Your sitemap.xml isn't only for Google anymore. Our log data shows that GPTBot + ClaudeBot crawl the sitemap.xml A LOT

Chris Long 看了自家公司 Nectiv 网站的服务器日志,发现 GPTBot 和 ClaudeBot 这两个 AI 爬虫来得最勤的地方就是 sitemap.xml。他的结论:sitemap 已经不只是给 Google 看的了,AI 爬虫也在用它。

要点：
1. 日志截图里 bot 访问次数排前面的是:/sitemap.xml 315 次、/robots.txt 315 次、/sitemap-md.xml 186 次、首页 43 次,单篇博文只有 4 次。作者说这是 GPTBot 和 ClaudeBot 的抓取记录(截图没写时间范围,也没把两个 bot 分开)。
2. 作者让 Claude Code 分析他们的网站时,Claude Code 调了两次 ahrefs 之后,就直接去抓 sitemap.xml(12.3KB)来盘点站上有哪些内容。作者说这只是一次性的观察。
3. 他们站上同时在测试给 bot 提供 Markdown 版页面(所以有一个 sitemap-md.xml);LLMs.txt 还没测过。

结论：AI 爬虫确实在读 sitemap.xml,所以把 sitemap 维护好,好处已经不只在 Google 搜索上。

原文：[https://www.linkedin.com/feed/update/urn:li:share:7513963315136495616/](<https://www.linkedin.com/feed/update/urn:li:share:7513963315136495616/>)

## 外部原文

### 原文 1

- 来源：<https://www.linkedin.com/feed/update/urn:li:share:7513963315136495616/>
- 抓取时间：2026-10-17T02:41:24.933559+00:00
- 状态：已获取原文页面

# AI Crawlers Use Sitemap.xml Beyond Google | Chris Long posted on the topic | LinkedIn

Chris Long
1w

AEO Tip: Your sitemap.xml isn't only for Google anymore. Our log data shows that GPTBot + ClaudeBot crawl the sitemap.xml A LOT: 

Author's Note: To get tips like this straight to your inbox, check out the newsletter in my bio. 

So we've been running a good amount of tests on the Nectiv site recently. Been doing different things such as testing serving markdown down to bots, monitoring the logs and seeing how general AI crawlers are interacting with our site. Possibly more to come on that? 

The big thing we've noticed that is pretty consistent is that AI crawlers are 100% using our sitemap.xml file. For both ClaudeBot and GPTBot, these are the crawled pages on our site. We've even seen when asking Claude Code to analyze our site (one-off instance), it will actually navigate to the sitemap.xml first in order to inventory all of the content available. 

We haven't tested an LLMs.txt yet but it definitely appears that the sitemap.xml is a signal that AI crawlers are in fact using. So now optimizing your sitemap.xml has relevance outside of only Google search. 

AI engines are most likely using it as well. 

234
30 Comments
Like
Comment
Share
Jakub Sawa 🔍
1w

Same data at jsseo.dev

Like
Reply
3 Reactions
Artur M.
12h

Useful signal. I work on VisualSitemaps, and I'd pair the XML audit with a map of the actual site: are the important answer pages both listed in the sitemap and linked within a clear topic cluster? A crawler can discover a URL from XML while the site's intended relationships remain unclear.

Like
Reply
Afifa Ansari
1w

Makes you wonder how many important pages are being missed just because they’re buried deep in the site and missing from the sitemap.

Like
Reply
3 Reactions
Andreas Vorontsov
1w

Did you see whether they respect lastmod, or just take the whole list? That decides whether a site stamping every page at deploy time is helping itself or burying the twenty pages that changed.

Like
Reply
👨🚀 Paul Boudet
1w

Have you tried putting lastmod dates in the sitemap and checking whether the crawl frequency changes? I'd guess the bots lean on them.

Like
Reply
Muhammad "Riz" Rizwan
1w

Worth saying out loud that on most sites nobody owns that file. It's whatever the SEO plugin emits, so tag archives and paginated pages are usually sitting in there, and lastmod is just the row's updated_at, which means a typo fix reads as a changed page. That was survivable while it was only a hint to Google. It's a different thing when something is treating it as the inventory.

Like
Reply
👨🚀 Paul Boudet
1w

Did you see any difference in crawl frequency between URLs with a fresh lastmod and ones without? I'd guess that field is what the bots actually lean on, but I haven't seen anyone test it.

Like
Reply
Kaleem Abbasi
1w

Good data. Sitemaps are the cleanest inventory signal you control. One test worth running: compare crawl coverage of pages included in the sitemap versus ones left out. If the gap is wide, the sitemap is doing more work than llms.txt ever will.

Like
Reply
Vasanthakumar k
1w

Looks Interesting But,

GPT bot and Claude bot are the data - training bots , So this crawl wont create a big impact to ranking or citation inside the search. it just fetch the informational contents and delivers for the query like from its own.


Like
Reply
Robin Hassan
1w

Useful data, and it shows 2 different problems. A sitemap decides whether the AI can find your pages. It doesn't decide whether the AI quotes them. A lot of brands are about to fix the plumbing and discover the water was the problem: a perfectly crawlable site full of content that sounds like everyone else's gets found, then skipped. The sitemap is an afternoon of work. The real accomplishment is saying something no competitor's page already says. 

Like
Reply
