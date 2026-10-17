---
title: "Glenn Gabe: When sites drop for their core queries due to major algorithm updates, other queries can show up in GSC"
topic_id: "14425444814485242"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-14T04:06:42.684+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#", "#Tips#"]
original_urls: ["https://x.com/glenngabe/status/2108924035375485048"]
---

# Glenn Gabe: When sites drop for their core queries due to major algorithm updates, other queries can show up in GSC

- 发布时间：2026-10-14T04:06:42.684+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/14425444814485242)
- 标签：#SEO##Tips#

## 星球正文

Glenn Gabe: When sites drop for their core queries due to major algorithm updates, other queries can show up in GSC

Glenn Gabe 提醒：网站在算法更新中丢了核心关键词后，GSC 里会冒出一些看起来很"新"、甚至很吓人的 query。先别慌，这些词很可能一直都在，只是以前排不进 GSC 界面的前 1000 行。

要点：
1. 核心词排名掉了以后，原本排在后面的 query 会在 GSC 报表里浮到前面，看起来像是更新后才出现的新词。
2. 想确认是不是真的新词，用 GSC API 把下跌之前的全部 query 导出来对比，"Don't just rely on the top 1K in the GSC UI"。
3. 他刚帮一个站做过（作者自述）：API 一共导出了 7.6 万条 query，其中近 1000 条"吓人的新词"在更新前就已经存在、也一直在带来流量，只是没出现在默认的 1000 行报表里。
4. 导出工具可以用 Analytics Edge，他写过多篇教程。

结论：判断更新后的 query 变化，别只看 GSC 界面的前 1000 行，用 API 全量导出再比。

原文：[https://x.com/glenngabe/status/2108924035375485048](<https://x.com/glenngabe/status/2108924035375485048>)

## 外部原文

### 原文 1

- 来源：<https://x.com/glenngabe/status/2108924035375485048>
- 抓取时间：2026-10-17T02:41:24.933559+00:00
- 状态：已获取原文页面

# Glenn Gabe on X: "When sites drop for their core queries due to major algorithm updates, other queries can show up prominently in GSC since the other core queries are now gone... If think those newish queries are scary or dangerous (and you believe they are truly NEW), I highly recommend exporting… / X

Glenn Gabe
@glenngabe
When sites drop for their core queries due to major algorithm updates, other queries can show up prominently in GSC since the other core queries are now gone... If think those newish queries are scary or dangerous (and you believe they are truly NEW), I highly recommend exporting all queries from BEFORE the drop via the GSC API. Don't just rely on the top 1K in the GSC UI... Export them ALL.

I just did this for a site that thought some scary queries were new after an algo update hit, but they weren't. Exporting all queries via the API revealed nearly 1K of those queries for the site PRIOR to the algo update. 76K queries were exported in total (clearly way beyond the 1K in GSC). So the queries were always there, and driving traffic, but were not showing up in the default 1K query report in GSC. 

You can export queries via the API very easily (I have written several posts about how to do that via Analytics Edge).
10:14 PM · Oct 10, 2026
·
4,145
Views
10
1
29
26
