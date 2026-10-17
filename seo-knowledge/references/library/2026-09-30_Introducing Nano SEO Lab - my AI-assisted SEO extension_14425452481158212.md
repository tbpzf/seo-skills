---
title: "Introducing Nano SEO Lab - my AI-assisted SEO extension"
topic_id: "14425452481158212"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-09-30T00:08:41.848+0800"
author: "虾虾"
type: "talk"
tags: ["#工具#", "#SEO#"]
original_urls: ["https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted?utm_source=search_engine_roundtable&utm_campaign=ser_newsletter_2026-09-28&utm_medium=email"]
---

# Introducing Nano SEO Lab - my AI-assisted SEO extension

- 发布时间：2026-09-30T00:08:41.848+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/14425452481158212)
- 标签：#工具##SEO#

## 星球正文

Introducing Nano SEO Lab - my AI-assisted SEO extension

Chris Green 做了一个开源的 Chrome 扩展 Nano SEO Lab，定位是"浏览器里的技术 SEO 工作台"：打开页面就先跑一遍规则检查，再用浏览器自带的本地模型 Gemini Nano（也可以填自己的 OpenAI / Gemini API key）帮你分诊和解读。核心思路是先看事实，AI 只在需要解读的时候上场。

要点：
1. 打开扩展就自动检查：title 和标题层级、canonical 和可索引信号、链接、图片、结构化数据、URL 和语言/地区声明、服务器返回的 HTML 和渲染后页面的差异。这些检查刻意和模型判断分开。
2. 证据始终看得到：说 URL 渲染后变了，就给你看前后两个 URL；说链接 404，就给你看请求地址、状态码和最终落点。模型的判断叠在证据上面，不替代证据；模型拿不准时不瞎猜，把细节交给你拍板，确认要改的问题可以一键生成 Jira 工单草稿。
3. DOM 对比适合查 JS 重的页面：它会自动过滤 hydration、缓存 ID 这类没意义的变化，剩下的差异分批交给模型看（Nano 的上下文窗口小）。作者说这块还要大量测试。
4. 判断页面类型和搜索意图是否对得上时，可以切换喂给模型的页面格式（结构化摘要、干净 HTML、Markdown、可见文本、渲染后 HTML）；结果忽好忽坏时，先怀疑是格式问题。

结论：还在早期测试，Chrome 商店在审核，可以先从 GitHub 装。作者说它替代不了爬虫、数据分析工具和有经验的顾问，是用来减少页面级排查时来回切工具的麻烦。

原文：[https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted?utm_source=search_engine_roundtable&utm_campaign=ser_newsletter_2026-09-28&utm_medium=email](<https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted?utm_source=search_engine_roundtable&utm_campaign=ser_newsletter_2026-09-28&utm_medium=email>)

## 外部原文

### 原文 1

- 来源：<https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted?utm_source=search_engine_roundtable&utm_campaign=ser_newsletter_2026-09-28&utm_medium=email>
- 抓取时间：2026-10-17T02:39:12.452907+00:00
- 状态：已获取原文页面

---
canonical: https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted
meta-article:modified_time: 2026-09-27T15:22:24.999Z
meta-author: Chris Green
meta-description: AI to super-change your usual SEO checks, in your brower
meta-norton-safeweb-site-verification: 24usqpep0ejc5w6hod3dulxwciwp0djs6c6ufp96av3t4whuxovj72wfkdjxu82yacb7430qjm8adbd5ezlt4592dq4zrvadcn9j9n-0btgdzpiojfzno16-fnsnu7xd
meta-og:description: AI to super-change your usual SEO checks, in your brower
meta-og:image: https://substackcdn.com/image/fetch/$s_!oyLc!,w_1200,h_675,c_fill,f_jpg,q_auto:good,fl_progressive:steep,g_auto/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F0e250d88-ebc9-4dd3-a622-e0f53d15cced_1468x1256.png
meta-og:title: Introducing Nano SEO Lab - my AI-assisted SEO extension
meta-og:type: article
meta-og:url: https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted
meta-theme-color: #ffffff
meta-twitter:card: summary_large_image
meta-twitter:description: AI to super-change your usual SEO checks, in your brower
meta-twitter:image: https://substackcdn.com/image/fetch/$s_!4rMR!,f_auto,q_auto:best,fl_progressive:steep/https%3A%2F%2Fchrisgreenseo.substack.com%2Fapi%2Fv1%2Fpost_preview%2F217508918%2Ftwitter.jpg%3Fversion%3D4
meta-twitter:title: Introducing Nano SEO Lab - my AI-assisted SEO extension
meta-viewport: width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0, viewport-fit=cover
title: Introducing Nano SEO Lab - my AI-assisted SEO extension
---

[Chris Green Search Marketing](https://chrisgreenseo.substack.com/)

# [Chris Green Search Marketing](https://chrisgreenseo.substack.com/)

![SVG Image]

![SVG Image]

Subscribe

Sign in

# Introducing Nano SEO Lab - my AI-assisted SEO extension

### AI to super-change your usual SEO checks, in your brower

[Chris Green's avatar](https://substack.com/@chrisgreenseo)

[Chris Green](https://substack.com/@chrisgreenseo)

Sep 27, 2026

![SVG Image]

7

![SVG Image]

2

![SVG Image]

Share

*This is part of a three post series - check out my [thinking on using local AI, rather than sending it all to cloud-frontier models](https://chrisgreenseo.substack.com/p/using-local-ai-compute-to-reduce) and [using AI to assist, not takeover](https://chrisgreenseo.substack.com/p/using-ai-to-assist-with-seo-work).*

***Cut to the chase and [get the extension here from the Git Repo](https://github.com/chr156r33n/nano-seo-extension). I currently pending Chrome Extension store acceptance.***

Thanks for reading! Subscribe for free to receive new posts and support my work.

The most useful way to think about this extension is more like a tech **SEO workbench inside the browser**. It has most-common SEO issues checked and then you can use a local LLM (Gemini Nano) to help triage small issues or summarise the data for more complex ones. Should you want to speed up the process, you can also add in your own API keys for OpenAI or Gemini too.

### The main goalSVG Image

The aim is to reduce the number of times you need to leave the page, open another crawler, paste something into a spreadsheet, start a separate AI conversation or manually assemble evidence before you can investigate something. It’s also not a case of delegating everything to an AI Agent and submitting work on “trust”.

That makes it (I hope) particularly useful during the messier parts of technical work: QA’ing, detailed spot checks, development reviews and investigating pages where you think something doesn’t look right.

*This extension is still in an early testing phase, but I wanted to share to gain feedback and share this as a proof-of-concept, as I think there’s a lot of merit to approaching issues like this.*

### Using Nano SEO LabSVG Image

The normal starting point is a full-page analysis (under Overview).

Without you needing to do anything aside from open the extension, it reads the current page and runs a set of deterministic checks across things such as:

- titles and headings

- canonical and indexability signals

- links

- images

- structured data

- URL and locale declarations

- differences between server HTML and the rendered DOM

Those checks are deliberately kept separate from model judgement.

The first question should be:
> What can we actually observe about this page?

You can then use the model (Nano, Gemini or OpenAI) to triage the issue, if you think it’s needed, and then use the tool context to write a Jira Ticket ready to copy and paste in.

To use Gemini/OpenAI, click “settings” and enter in your API keys under “Providers and page permissions”

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!WKNp!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fd1cfdea8-0ced-44ba-9a95-d816e43d2c27_1204x1066.png)

If you decide you always want to default to one of these models and bypass Nano, you can.  

### Keep the evidence visibleSVG Image

The main thing I wanted to ensure was that the underlying evidence is inspectable.

- If the extension says a URL changed after rendering, you should be able to see the original URL and the rendered URL.

- If a link returns a 404, you should be able to see the requested URL, status and final destination.

- If the server and rendered DOM differ, you should be able to inspect what changed rather than simply accepting that the model thinks something “looks significant”.

The model output should sit **on top** of that evidence, not replace it.

### Use models where interpretation is actually usefulSVG Image

Where models become most useful is when the facts need context. Read more on my thinking here.

For example, the DOM comparison can identify differences between the server HTML and the rendered page, reconcile those differences and remove obvious implementation noise such as hydration/state/cache IDs where the actual semantic value hasn’t changed.

The comparison summarises things such as:

- how many meaningful differences were detected

- how many may benefit from model review

- how much obvious implementation noise was removed

- how much of the comparable page inventory appears to have changed

The reviewable differences are then split into explicit batches, mostly because Nano has a limited context window, but also because you may not want to send everything all the time.

You can review any batch independently and you can always inspect the underlying difference before deciding whether the model’s interpretation is useful.

## A quick tour of the tabsSVG Image

Once the main page analysis has run, the other tabs are mostly there to let you investigate particular questions in more detail.

### OverviewSVG Image

This is the main starting point.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!oyLc!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F0e250d88-ebc9-4dd3-a622-e0f53d15cced_1468x1256.png)

**Run analysis** reads the page, runs the configured checks and brings the results together into findings, passed checks and supporting evidence.

For each finding you can inspect what was detected and, where useful, ask one of the selected models to review the context. In the below example, Gemini couldn’t tell, so rather than guess, t provides the detail for you to make the final call.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!EXKj!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6d1d0a69-1296-4c2e-94a5-153267a3834c_1484x954.png)

This is also where you can turn a finding into a draft Jira ticket once you’ve decided it is something worth acting on.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!PboG!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F89832e74-f693-4e1d-b50e-c0148ece9c68_1472x1232.png)

There are some advanced controls for things such as how many links, examples or DOM differences are sent in each model call, but the defaults should normally be fine.

The useful bit here is simply getting a broad view of the page before deciding which areas deserve a closer look.

### Page & intentSVG Image

This tab is for asking:
> What kind of page is this, what is it trying to satisfy, and do those things line up?

The main action is **Review alignment**.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!NczA!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F787de76d-770f-4d21-a70b-1c8d5143de02_2674x1268.png)

That runs the process in sequence:

1. identify the page type

2. identify the likely intent

3. review how well the two align

You can still inspect the page-type and intent outputs separately, and there are individual buttons if you only want to run one part of the process.

There is also an advanced option to change what representation of the page is sent to the model.

By default I’d leave it on the structured digest, but you can also try:

- clean HTML

- clean Markdown

- visible page text

- rendered HTML

- all five representations for comparison

That last option is particularly useful for testing how much the representation itself changes the model’s judgement. Use this if you’re getting mixed/inconsistent results in case the format the model receives is the problem.

### LinksSVG Image

The Links tab is useful when you want to understand more than simply whether a page has links.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!lZXk!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fcd8e32bc-a34b-46cc-a2e5-331c95d1e1c4_2580x1068.png)

**Review next links** takes a batch and looks at what those links appear to be doing on the page, for example:

- navigation

- editorial links

- product/category links

- CTAs

- utility links

At the same time, it checks the HTTP response for those destinations so you can see the role of the link alongside what actually happens when it is requested.

That means you can spot things such as a prominent CTA pointing through redirects or ending in an error without having to run a separate check.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!832D!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6b532f95-2205-4a71-81cc-1f73f8008265_1728x1196.png)

If you don’t want any model interpretation, **Check link responses only** just gets the response information without judgement/summary.

You can also change the number of links sent in each model call. Smaller batches are generally more suitable for Nano, while Gemini and OpenAI can usually cope with more. If you have a page with **a lot** of links, you may have an issue running a large batch if the CDN/Bot management kicks in.

### TechnicalSVG Image

This is where most of the deeper investigation tools live.

#### DOM comparisonSVG Image

**Run comparison** compares the server HTML with the live rendered DOM.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!l0dg!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F5360d002-66c2-4a4b-b60b-5002f11a1b76_1034x912.png)

It is particularly useful for investigating JavaScript-heavy pages and questions such as:

- did a heading disappear or change after rendering?

- did a link destination change?

- was content added or removed?

- is a working URL only available after JavaScript?

- how much meaningful page content actually changed?

The extension tries to reconcile likely before/after versions of the same element and remove obvious implementation noise rather than treating every generated ID or hydration-state change as meaningful.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!YKEG!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2Fbf6e2dc6-6063-4275-8663-e28e2488eca1_2584x1136.png)

Any remaining differences that may benefit from interpretation are grouped into batches, and you can review whichever batches you want.

Under **Advanced review settings** you can change the model batch size.

There is also a **Download unfiltered diff** option. This exports the earlier stages of the comparison before the normal reconciliation/noise-filtering process, which is useful if you are debugging why something did or did not appear in the final comparison.

*Out of all the tools in Nano SEO Lab, this is the one I need to stress test more and more. JavaScript can be tricksy and so can interpreting it for potential SEO/GEO impact. I am tweaking this a lot, but more feedback here would be great!*

#### Check indexability signalsSVG Image

**Check HTTP & robots signals** performs the more network checks that I don’t want running automatically every time you inspect a page.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!lMVr!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6ada206a-bdef-4804-a48a-895a0250cbc7_1326x1088.png)

You control when it happens for predictability. With it you can compare things such as:

- HTTP headers

- server HTML directives

- rendered directives

- robots.txt

- canonical targets

- crawler access signals

#### Review URL and locale signalsSVG Image

This section pulls together things such as canonical and hreflang signals and looks for contradictions.

The hreflang validation itself is deterministic, while **Review signals** can be used when the overall combination needs some interpretation.

This is mostly useful for the awkward cases where each individual tag may look reasonable, but together they tell conflicting stories about what the page is supposed to represent.

### HistorySVG Image

The History tab is mostly there for inspection and research.

[SVG ImageSVG Image](https://substackcdn.com/image/fetch/$s_!2Ynx!,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F9b188a45-832d-4561-b43a-caf8733e2be6_1332x976.png)

You can:

- reopen previous analysis runs

- inspect the model-call log

- export the underlying JSON

I find this useful while developing and testing the extension, but it is also handy if you want to understand exactly what evidence was sent to a model rather than only looking at the final output.

*If anything goes wrong and you want me to take a look, sending me the relevant log detail is super-helpful.*

### Where this fits in practiceSVG Image

I can see the extension becoming most useful for the small investigative actions that happen between larger pieces of SEO work. It won’t replace crawlers or analytics OR a skilled consultant. Instead, **reducing the friction** around questions like:

- What’s actually happening on this page?

- Is this change only happening after render?

- Are these two URLs functionally the same?

- What happens when these links are actually requested?

- Is this finding worth investigating?

- Can I turn this evidence into something useful for a developer?

This covers some of the most important page-level technical SEO/GEO questions. It does it without an over-reliance on AI, but rather - I hope - using AI where it makes the most sense, or is the most useful.

Thanks for reading! Subscribe for free to receive new posts and support my work.

![SVG Image]

7

![SVG Image]

2

![SVG Image]

Share

#### Discussion about this post

[David Iwanow's avatar](https://substack.com/profile/25674140-david-iwanow?utm_source=comment)

[David Iwanow](https://chrisgreenseo.substack.com/profile/25674140-david-iwanow)

[Oct 5](https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted/comment/353220551 "Oct 5, 2026, 7:05 AM")

![SVG Image]

Liked by Chris Green

![SVG Image]

It's brilliant to see some of these tools flowing out from you, well done mate

![SVG Image]

Reply

![SVG Image]

Share

[Jerica Queen's avatar](https://substack.com/profile/368690072-jerica-queen?utm_source=comment)

[Jerica Queen](https://chrisgreenseo.substack.com/profile/368690072-jerica-queen)

[Oct 3](https://chrisgreenseo.substack.com/p/introducing-nano-seo-my-ai-assisted/comment/352156840 "Oct 3, 2026, 7:16 PM")

![SVG Image]

Keeping deterministic checks separate from model interpretation matters operationally, because it gives a reviewer a defensible reason for every ticket that gets created. I’d pair that workflow with a simple severity-to-impact field so teams can prioritize issues tied to indexed pages, qualified entry points, or conversion paths rather than treating every discrepancy as equal. That would make the extension useful in the weekly backlog review, not only during audits.

![SVG Image]

Reply

![SVG Image]

Share

No posts

### Ready for more?

© 2026 Chris Green · [Privacy](https://substack.com/privacy) ∙ [Terms](https://substack.com/tos) ∙ [Collection notice](https://substack.com/ccpa#personal-data-collected)

[![SVG Image] Start your Substack](https://substack.com/signup?utm_source=substack&utm_medium=web&utm_content=footer)[Get the app](https://substack.com/app/app-store-redirect?utm_campaign=app-marketing&utm_content=web-footer-button)

[Substack](https://substack.com) is the home for great culture
