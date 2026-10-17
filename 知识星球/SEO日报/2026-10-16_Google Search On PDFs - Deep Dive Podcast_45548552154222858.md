---
title: "Google Search On PDFs - Deep Dive Podcast"
topic_id: "45548552154222858"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-16T04:09:32.029+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#"]
original_urls: ["https://www.seroundtable.com/google-search-on-pdfs-42291.html"]
---

# Google Search On PDFs - Deep Dive Podcast

- 发布时间：2026-10-16T04:09:32.029+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/45548552154222858)
- 标签：#SEO#

## 星球正文

Google Search On PDFs - Deep Dive Podcast

Google 的 Martin Splitt 和 John Mueller 在 Search Off the Record 播客里专门聊了一期 PDF：Google 怎么处理 PDF、能不能排名、有哪些坑。这篇是 Search Engine Roundtable 的 Barry Schwartz 听了两遍之后整理的要点。

要点：
1. PDF 是二进制文件，Google 在索引时会先把它转成 HTML，之后就用和普通网页同一套系统去收录和排名。PDF 也能出现在 AI Overviews 里，也能被 AI 用来训练和 grounding。
2. PDF 里的文字链接会保留并正常抓取；但 PDF 里嵌的图片没有独立 URL，一般进不了 Google 图片搜索。PDF 的抓取上限比 HTML 大，播客里没给具体数字（SER 旧报道标题写的是 PDF 64MB、其他文件类型 2MB）。
3. Google 把 PDF 当成相对静态的文件，重抓频率比 HTML 低得多。PDF 更新了想尽快被收录，就换一个新 URL 或文件名发布，别直接覆盖原文件。CMS 自动给网页生成"打印版" PDF 的，会和网页抢排名，而且 PDF 版本常常是过期的。
4. 常见坑：扫描件或整页是图片的 PDF，没有 OCR 搜索引擎读不到字（可以选中文字复制粘贴到编辑器里自测）；设了密码 Google 就读不了；手机上要整份下载完才能看，放大也不会重新排版。同一份 PDF 放在多个网站上很难做 canonical，可以用 HTTP header 里的 rel=canonical、填好 PDF 的 metadata、在文档页首放回到自己网站的链接。

结论：默认用 HTML，只有需要固定打印格式、可下载的表格或纸质文档时才用 PDF；llms.txt 这种给机器读的文件千万别存成 PDF。

原文：[https://www.seroundtable.com/google-search-on-pdfs-42291.html](<https://www.seroundtable.com/google-search-on-pdfs-42291.html>)

## 外部原文

### 原文 1

- 来源：<https://www.seroundtable.com/google-search-on-pdfs-42291.html>
- 抓取时间：2026-10-17T02:41:24.933559+00:00
- 状态：已获取原文页面

# Google Search On PDFs: Conversion, Links, HTML, Ranking, Limits, Crawling...

Oct 13, 2026 - 3:27 pm [*![SVG Image]* 0](https://www.seroundtable.com/google-search-on-pdfs-42291.html#comments) — by [Barry Schwartz](https://www.seroundtable.com/author/barry-schwartz/2.html)

## [Barry Schwartz / Executive Editor](https://www.seroundtable.com/author/barry-schwartz/2.html)

[![](https://images.seroundtable.com/assets/author_24ced40514768a_full.jpg)](https://www.seroundtable.com/author/barry-schwartz/2.html)

[*![SVG Image]*](https://twitter.com/rustybrick) [*![SVG Image]*](https://bsky.app/profile/rustybrick.com) [*![SVG Image]*](https://linkedin.com/in/rustybrick)

Barry Schwartz is the CEO of [RustyBrick](http://www.rustybrick.com/) and a technologist, a New York Web service firm specializing in customized online technology that helps companies decrease costs and increase sales. Barry is also the founder of the [Search Engine Roundtable](https://www.seroundtable.com/) and the News Editor of [Search Engine Land](http://searchengineland.com/). He is well known & respected for his expertise in the search marketing industry. He only provides consulting services to expert SEOs and also performs [search marketing expert witness](https://www.rustybrick.com/sem-expert-witness.html) services. Barry graduated from the City University of New York and lives with his family in the NYC region. You can follow Barry on Twitter at [@rustybrick](https://twitter.com/rustybrick) or on [LinkedIn](https://www.linkedin.com/in/rustybrick/) and read his full bio [over here](http://www.rustybrick.com/barry).  
39,391 Articles as [barry.schwartz](https://www.seroundtable.com/author/barry-schwartz/2.html)

Filed Under [Google Search Engine Optimization](https://www.seroundtable.com/category/google-seo)

![Google Pdfs Hero](https://images.seroundtable.com/google-pdfs-hero-2Uf23ick.jpg)

Google's Martin Splitt and John Mueller just posted a Search Off the Record podcast on the topic of PDFs, it is named [PDFs in Search: Indexing, AI & Pitfalls](https://search-off-the-record.libsyn.com/pdfs-in-search-indexing-ai-pitfalls). It goes over how PDFs are converted for crawling and indexing, how Google processes links, images, what are the file limits and do they rank in search and AI search.

The podcast is broken into these chapters:

- 00:50 – Can you save an LLMs.txt file as a PDF?
- 01:56 – Plain text vs. Binary container: What makes PDFs different from HTML?
- 03:08 – Inside Google's converter pipeline: Turning PDFs into HTML for indexing.
- 05:08 – Extracting images and links from PDF files.
- 06:04 – Crawling limits, file sizes, and testing cut-off thresholds.
- 08:35 – When does it make sense to publish a PDF?
- 09:33 – Do PDFs rank in Search, AI Overviews, and AI mode?
- 11:22 – Technical pitfalls: Rasterized pages, scanned images, and accessibility.
- 12:53 – Mobile connection delays, layout locking, and zoom issues.
- 14:12 – Canonicalization challenges with duplicate "binary blobs".
- 15:57 – Metadata, password protection, and updating PDF files.
- 18:59 – The problem with dynamic CMS PDF generation.
- 21:08 – The restaurant menu debate: PDF vs. HTML web pages.
- 23:00 – PDFs for GEO (Generative Engine Optimization) & AI grounding.

[https://www.youtube.com/embed/wJukFIpZybY?si=DWt9GXcW0H9dulWz](https://www.youtube.com/embed/wJukFIpZybY?si=DWt9GXcW0H9dulWz)

Truth is, we covered most of this stuff, maybe outside of the GEO/AI search aspect, which Google didn't say much about.

Here is our old coverage of what Google said on PDFs, I am sure I am missing stuff:

- [Google Converts PDFs To HTML For Indexing In Search](https://www.seroundtable.com/google-converts-pdfs-to-html-indexing-26290.html)
- [Google: You Can Publish Both PDF & HTML Formats](https://www.seroundtable.com/google-both-pdf-html-version-36544.html)
- [Duplicate Content Between HTML & PDF Pages? Google Should Figure It Out](https://www.seroundtable.com/archives/021584.html)
- [Google: Don't Worry About Duplicate Content With PDFs & Web Pages](https://www.seroundtable.com/google-pdf-duplicate-content-21842.html)
- [Google: No Problem Having Downloadable PDFs That Match Your Web Content](https://www.seroundtable.com/google-pdf-web-content-duplicate-22520.html)
- [Google Indexes PDF Documents But Refreshes Them Slowly](https://www.seroundtable.com/google-pdf-index-21680.html)
- [Google: Links Within PDF Documents Pass PageRank](https://www.seroundtable.com/google-pdf-links-pagerank-20573.html)
- [Googlebot File Limit Is 15MB But 64MB For PDF & 2MB For Other File Types](https://www.seroundtable.com/googlebot-file-limits-40876.html)
- [Did Google Just Say Links In PDFs Treated As Nofollow Links?](https://www.seroundtable.com/google-links-in-pdfs-nofollow-28906.html)
- [Google: PDFs Are Not Mobile Friendly](https://www.seroundtable.com/google-pdf-not-mobile-friendly-25818.html)

Here is how I'd sum it up after listening to it twice and reading the transcript:

How Google Processes and Ranks PDFs:

- HTML Conversion: PDFs are binary container files rather than plain text. During the indexing pipeline, Google uses a converter component to turn PDFs into an HTML representation, allowing internal search systems to handle them like regular web pages.
- Links and Embedded Media: Because PDFs are converted to HTML, embedded text links are preserved and crawled normally. However, images embedded in PDFs lack standalone URLs, so they generally cannot be processed into Google Image Search the same way as standard web images.
- Search and AI Visibility: Converted PDFs rank and index using the same fundamental systems as standard HTML documents. They can appear in AI Overviews and are accessible to AI models for training and grounding.
- Crawl Size Limits: The crawling limit for PDFs is larger than the limit for standard HTML pages. Google deliberately does not document an exact cutoff because crawl thresholds are adjusted over time as file size norms evolve. Although, Google [does document that](https://www.seroundtable.com/15mb-googlebot-limit-subresources-35079.html).

Technical Pitfalls and UX Challenges:

- Rasterized and Scanned Documents: If a PDF is composed of scanned images or rasterized pages rather than text, search engines cannot read the content without OCR. Site owners can test this by highlighting, copying, and pasting text from the PDF into a text editor.
- Mobile and Accessibility Issues: PDFs must download completely before rendering on mobile devices and have fixed print layouts that do not reflow text when zoomed. They can also present barriers for screen readers if not structured accessibly.
- Canonicalization and Duplication: Because identical PDFs are exact binary duplicates, cross-domain canonicalization is difficult. Publishers can mitigate duplicate content issues by using rel=canonical HTTP headers, populating PDF metadata fields, and placing prominent links back to their website in the document header.
- Access Restrictions: Password protection blocks search engine bots from reading or indexing PDF content.

Crawl Frequency and Updates:

- Slower Recrawl Rates: Google treats PDFs as relatively static binary files (similar to images) and recrawls them much less frequently than HTML.
- Changing File Names for Updates: Because recrawls take longer, publishers needing to index an updated PDF quickly should publish it under a new URL or file name rather than overwriting the existing file.
- Avoiding Auto-Generated "Print" PDFs: Automated CMS tools that generate PDF duplicates of live web pages can cause both versions to compete in search results, leaving the PDF version outdated because it is recrawled less often.

SEO Recommendations:

- Default to HTML: HTML is easier to edit, responsive on mobile screens, and faster to index.
- Use PDFs Selectively: PDFs are appropriate when content requires rigid print formatting, downloadable offline forms, or paper documentation. For small businesses like restaurants, a PDF menu is acceptable if creating an HTML equivalent is impractical.
- Keep llms.txt Plain Text: Files intended for machine consumption (like llms.txt) should never be formatted as PDFs, as the entire purpose of the format is to provide simple, lightweight plain text.

Forum discussion at [X](<https://www.seroundtable.com/google-search-on-pdfs-42291.html>).

 

[*![SVG Image]*](javascript:sharePopup("https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.seroundtable.com%2Fgoogle-search-on-pdfs-42291.html");) [*![SVG Image]*](https://twitter.com/intent/tweet?url=https%3A%2F%2Fwww.seroundtable.com%2Fgoogle-search-on-pdfs-42291.html&text=Google+Search+On+PDFs%3A+Conversion%2C+Links%2C+HTML%2C+Ranking%2C+Limits%2C+Crawling...&via=rustybrick) [*![SVG Image]*](javascript:sharePopup("http://www.reddit.com/submit?url=https%3A%2F%2Fwww.seroundtable.com%2Fgoogle-search-on-pdfs-42291.html&title=Google+Search+On+PDFs%3A+Conversion%2C+Links%2C+HTML%2C+Ranking%2C+Limits%2C+Crawling...");) [*![SVG Image]*](javascript:sharePopup("http://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fwww.seroundtable.com%2Fgoogle-search-on-pdfs-42291.html&title=Google+Search+On+PDFs%3A+Conversion%2C+Links%2C+HTML%2C+Ranking%2C+Limits%2C+Crawling...");) [*![SVG Image]*](https://bsky.app/intent/compose?text=Google+Search+On+PDFs%3A+Conversion%2C+Links%2C+HTML%2C+Ranking%2C+Limits%2C+Crawling...%3Cbr%3E%3Cbr%3Ehttps%3A%2F%2Fwww.seroundtable.com%2Fgoogle-search-on-pdfs-42291.html) [*![SVG Image]*](https://www.seroundtable.com/cdn-cgi/l/email-protection#84bbf7f1e6eee1e7f0b9c3ebebe3e8e1a4d7e1e5f6e7eca4cbeaa4d4c0c2f7bea4c7ebeaf2e1f6f7edebeaa8a4c8edeaeff7a8a4ccd0c9c8a8a4d6e5eaefedeae3a8a4c8ede9edf0f7a8a4c7f6e5f3e8edeae3aaaaaaa2e5e9f4bfe6ebe0fdb9c5f6f0ede7e8e1bea4ecf0f0f4f7beababf3f3f3aaf7e1f6ebf1eae0f0e5e6e8e1aae7ebe9abe3ebebe3e8e1a9f7e1e5f6e7eca9ebeaa9f4e0e2f7a9b0b6b6bdb5aaecf0e9e8) [*![SVG Image]*](https://www.seroundtable.com/google-search-on-pdfs-42291.html) Copied!
