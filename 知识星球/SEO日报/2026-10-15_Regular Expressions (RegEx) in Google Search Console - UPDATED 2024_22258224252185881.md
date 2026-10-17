---
title: "Regular Expressions (RegEx) in Google Search Console - UPDATED 2024"
topic_id: "22258224252185881"
group: "SEO日报"
group_id: "88882458825452"
created_at: "2026-10-15T04:10:02.417+0800"
author: "虾虾"
type: "talk"
tags: ["#SEO#", "#Tips#"]
original_urls: ["https://www.jcchouinard.com/regex-in-google-search-console/"]
---

# Regular Expressions (RegEx) in Google Search Console - UPDATED 2024

- 发布时间：2026-10-15T04:10:02.417+0800
- 作者：虾虾
- 星球原帖：[查看帖子](https://wx.zsxq.com/group/88882458825452/topic/22258224252185881)
- 标签：#SEO##Tips#

## 星球正文

Regular Expressions (RegEx) in Google Search Console - UPDATED 2024

Jean-Christophe Chouinard 整理的 GSC 正则速查。GSC 效果报告里按 Query 和 Page 过滤都能用正则，这篇把常用写法和坑一次列全，最新加了一条用来捞 AI Mode 对话式 query 的正则。

要点：
1. GSC 用的是 RE2 语法，不支持 lookahead 这类写法；一条正则最多 4096 个字符；想排除某类词，用过滤里的 "Doesn't match regex"。开头加 (?i) 就不区分大小写。
2. 找长尾：^[\w\W\s\S]{70,}$ 筛出 70 个字符以上的 query，(\w+\s){7,}\w+ 按词数筛；按意图分组：信息型 who|what|how，商业型 best|top|vs|review，交易型 buy|price|order。
3. 排查问题页：URL 里有特殊字符用 [^\/\.\-:0-9A-Za-z_]；查被注入的垃圾页用 viagra|cialis 这类词；查被收录的 WordPress 后台页用 wp-。
4. 作者实测：\p{Han}、\p{Cyrillic} 这类按文字类型匹配的写法，在 Query 过滤里能用，在 URL 过滤里不生效。
5. AI Mode 段：作者自己的实验里 AI Mode 的 query 在 GSC 全被匿名化了，但他根据大型 LLM 的真实 prompt（已去掉个人信息）总结了一条正则，专门匹配 please / write / summarize / act as、thanks、yes go on、show me more 这类聊天式句子，可以直接贴进 GSC 的 Query 过滤里用。

原文：[https://www.jcchouinard.com/regex-in-google-search-console/#Chat_Like_Queries_That_may_come_from_AI_Mode](<https://www.jcchouinard.com/regex-in-google-search-console/#Chat_Like_Queries_That_may_come_from_AI_Mode>)

## 外部原文

### 原文 1

- 来源：<https://www.jcchouinard.com/regex-in-google-search-console/>
- 抓取时间：2026-10-17T02:39:12.452293+00:00
- 状态：已获取原文页面

---
canonical: https://www.jcchouinard.com/regex-in-google-search-console/
meta-article:modified_time: 2026-09-16T18:21:46+00:00
meta-article:published_time: 2025-04-04T16:17:46+00:00
meta-author: Jean-Christophe Chouinard
meta-description: Google Search Console just started to support regular expressions (RegEx) in filters. Let's learn how to leverage RegEx to analyse GSC data. This article Learn Google Search Console by JC Chouinard
meta-generator: WordPress 7.1.3
meta-msapplication-TileImage: https://www.jcchouinard.com/wp-content/uploads/2019/11/cropped-jean-christophe-chouinard-seo-expert-quebec-270x270.jpg
meta-og:description: Google Search Console just started to support regular expressions (RegEx) in filters. Let's learn how to leverage RegEx to analyse GSC data. This article Learn Google Search Console by JC Chouinard
meta-og:image: https://www.jcchouinard.com/wp-content/uploads/2024/01/Regex-gsc.png
meta-og:image:height: 720
meta-og:image:type: image/png
meta-og:image:width: 1280
meta-og:locale: en_US
meta-og:site_name: JC Chouinard
meta-og:title: Regular Expressions (RegEx) in Google Search Console - UPDATED 2024
meta-og:type: article
meta-og:url: https://www.jcchouinard.com/regex-in-google-search-console/
meta-robots: index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1
meta-twitter:card: summary_large_image
meta-twitter:creator: @ChouinardJC
meta-twitter:data1: Jean-Christophe Chouinard
meta-twitter:data2: 10 minutes
meta-twitter:label1: Written by
meta-twitter:label2: Est. reading time
meta-twitter:site: @ChouinardJC
meta-viewport: width=device-width, initial-scale=1
title: Regular Expressions (RegEx) in Google Search Console - UPDATED 2024
---

[JC Chouinard](https://www.jcchouinard.com/)

![Regular expressions in Google Search Console](https://www.jcchouinard.com/wp-content/uploads/2024/01/Regex-gsc.png)

By [jean-christophe-chouinard](https://www.jcchouinard.com/author/jean-christophe-chouinard/) 4 April 2025

# [Regular Expressions (RegEx) in Google Search Console](https://www.jcchouinard.com/regex-in-google-search-console/)

[![Add as a preferred source on Google](https://www.jcchouinard.com/wp-content/uploads/2026/09/google-preferred-source-badge-black.png)](https://www.google.com/preferences/source?q=jcchouinard.com)

> This article is part of the Complete Guide on [Google Search Console](https://www.jcchouinard.com/google-search-console/) (GSC)

Google Search Console just started to support regular expressions (RegEx) in filters. Let’s learn how to leverage RegEx to analyse GSC data.

This article is to learn regular expressions that you can use in Google Search Console and follows the Re2 syntax.

To learn more regular expressions, read [RegEx for SEO](https://www.jcchouinard.com/regex-for-seo/) or you can also use my [regex validator](https://www.jcchouinard.com/tools/regex-tester.html).

[https://jcchouinard.substack.com/embed](https://jcchouinard.substack.com/embed)

**Navigation** [Show](https://www.jcchouinard.com/regex-in-google-search-console/)

## Getting Started with RegEx in Google Search Console

---

Google Search Console uses [Re2 syntax](https://github.com/google/re2/wiki/Syntax) and does not support all the regular expressions syntaxes that you might know.

Filtering by RegEx is available for Page and Query reports.

To filter the Performance Report using regexes click on New and select either Query or Page.

![](https://www.jcchouinard.com/wp-content/uploads/2021/04/image-7-1024x220.png)

![](https://www.jcchouinard.com/wp-content/uploads/2021/04/image-8-1024x445.png)

Add your regular expression and filter your report.

![](https://www.jcchouinard.com/wp-content/uploads/2021/04/image-6.png)

---

## RegEx Generator Tool for GSC

[https://jcchouinard.com/tools/gsc_regex_generator_by_jc_chouinard.html](https://jcchouinard.com/tools/gsc_regex_generator_by_jc_chouinard.html)

## Chat Like Queries That may come from AI Mode

Barry Schwartz made [a post about AI Mode queries surfacing in GSC](https://www.seroundtable.com/google-search-console-ai-mode-queries-41821.html). I had an [experiment that shown that all my AI Mode queries](https://www.jcchouinard.com/google-search-console-ai-mode-click-tracking/) were obfuscated in GSC, but Barry’s post is compelling as it matches what you’d expect from Chat Like interfaces. I have generated a regular expression based on common patterns that I was seeing in the PII cleaned prompts of first-hand data of a large scale LLM.

```
^((please|write|draft|generate|summarize|rewrite|translate|explain|compare|act as|you are a|(give|show|tell|plan) (a|me)|list|organize|pretend you are|make it (shorter|funnier)|suggest|estimate|optimize|find|can you) .*|give me .* more|(hi|hello|hey|hiya)( (there))?|good (morning|afternoon|evening)|how are you|yo|(thanks|thank you)( (so much|a lot|very much))?|thx|cheers|(awesome|great|cool) thanks|ty|thankyou|sorry|fuck (you|off)|i hate you|you suck|shut up|yes|yep|yeah|yea|sure|ok|okay|correct|fine|sounds good|perfect|great|yes both|yes i do|yes that would be great|yes go on|yes,? pricing|(yes|yeah|sure|ok|okay) (please|thanks|thank you|pls|thx|plz)|(please|thanks|thank you) (yes|yeah|sure|ok|okay)|(no|nope|nah)( (thanks|thank you|thx))?|cancel|stop|wrong|incorrect|anywhere|all|any|yes please recommend|please recommend|bye|goodbye|bye bye|see ya|end|quit|done|help|options|what can you do|start over|restart|more|next|continue|go on|show on map|show me|any other options|others|please do|show map|try again|again|shorter|longer|fix it|is that all|(where|when|anything) else|(are there|any|show|show me) (more|others)|more (recommendations|ideas|options|results|places|hotels|restaurants|things to do|attractions)|(show|tell|add) (me )?(more|others|next))$
```

## Character Limits

---

Google Search Console imposes a character limit of 4096 characters. It is usually enough.

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-96.png)

With Regular Expressions, you can make your pattern more condensed to save characters.

For example, this:

```
example.com/aa|example.com/bb
```

equals:

```
example.com/(aa|bb)
```

---

## Match all Pages / Queries that Contains a word

---

To filter pages or queries that contains a word, just wrap the word around `.*`.

This would match anything before and after your string. Here I match anything containing the word `seo`.

```
.*seo.*
```

- `.*` matches anything.

---

## Match Specific Pages

---

To match specific pages, write your property along with a capture group `()` for the URIs. You can help yourself with this with [JR Oakes’ RegEx Builder in Google Sheets](https://docs.google.com/spreadsheets/d/1yZ0QpzFDqiW-mMG4XFwD7eip4JCGC4cSW8pxR7gT4hE/edit#gid=0).

```
^https://www.jcchouinard.com/(python-for-seo|google-search-console-api|reddit-api)/$
```

- `()` capture group to group elements together
- `|` means `OR`
- `^` starts with
- `$` ends with

---

## Negative Filtering with RegEx

---

The first reactions from the SEO community to the new regular expression filtering in Google Search Console was that negative lookahead was not supported in Re2.

Google [quickly reacted](https://www.searchenginejournal.com/google-search-console-adds-new-regex-filter-options/409177/) and came up with negative filtering by regex.

You can now use the Doesn’t match regex with Custom (regex) filter.

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-5.png)

---

## Match Query / URL Length with RegEx

---

### Match short patterns of less than 10 characters.

```
^[\w\W\s\S]{1,10}$
```

Results shown

```
seo
python
regex
regex for SEO
```

Results filtered out

```
long-tail queries with more than 10 characters
```

- `[]` matches range of characters
- `^` starts with
- `$` ends with
- `\w` matches ASCII letter, digit or underscore. It is the same as` [A-Za-z0-9_]\g`;
- `\s` matches whitespace;
- `\W` matches anything that is not an ASCII letter, digit or underscores;
- `\S` matches anything that is not whitespace.
- `{1,10}` repetitions of patterns from 1 to 10 times.

### Find long-tail queries with Regular Expressions

The RegEx below would match any query longer than X characters (70 in this case).

```
^[\w\W\s\S]{70,}$
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-32.png)

Another solution is to count the number of whitespaces to identify the number of words.

```
(\w+\s){7,}\w+
```

- `^` startswith
- `$` endswith
- `[\w\W\s\S]` any character
- `{70,}` 70 times or more
- `(\w+\s)`Any number of words between 1 and unlimited times followed by a space
- `{7,}` 7 times or more
- `\w+` ending with a word

### Find Very Long URLs

Use this regular expression to filter page urls that are longer than 100 characters.

```
^[\w\W\s\S]{100,}$
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-27.png)

---

## URL Containing Special Characters

---

Matches any URL that contains special characters.

```
[^\/\.\-:0-9A-Za-z_]
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-33.png)

- `[^]` exclude range of characters
- `\/\.\-\: `Exclude non-word characters that are common in URLs (i.e. the `://` in the protocol and the dashed `-` between words)
- `0-9A-Za-z_` word characters to exclude from the regex.

---

## Show a Specific URL Path

---

Sometimes, you just want to match a specific path.

- `/<category>/<sub-category>/<feature>`

```
.*/jobs/.*/melbourne$
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-34.png)

That could match

- `/jobs/sales/melbourne`
- `/jobs/marketing/melbourne`
- …

---

## Ends With a Trailing Slash

---

Show pages that does contain (or not) the trailing slash at the end.

```
.*\/$
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-55.png)

---

## Show HTTP/HTTPS/Subdomains Variations

---

Although it is recommended to [validate your site in Google Search Console](https://www.jcchouinard.com/validate-site-in-google-search-console/) both at a domain level and individual URL prefix, you might want a quick way to check your domain property for indexed subdomains or HTTP/HTTPs variations.

```
https?\:\/\/.*example\.com\/?$
```

This is a quick way to identify subdomains that you might not know are indexed.

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-57-1024x1000.png)

- `https?` matches http or https
- `\/?$` ends with trailing slash or not.

---

## Compare Regular Expressions

---

You might want to compare pages or queries based on RegExes.

You can use the compare filter with regular expressions too.

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-61-828x1024.png)

---

## Understand User Intent

---

Show queries that defines different user intent.

### Informational

```
who|what|when|how|why
```

and more coming from [Steve Toth](https://seonotebook.com/notes/gsc-regex-longtail-keywords-questions/):

```
who|what|where|when|why|how|was|did|do|is|are|aren’t|won’t|does|if|can|could|should|would|won’t|were|weren’t|shouldn’t|couldn’t|cannot|can’t|didn’t|did not|does|doesn’t|wouldn’t
```

### Navigational

See ([Match Branded Terms](https://www.jcchouinard.com/regex-in-google-search-console/#branded)).

```
.*brand.*
```

### Commercial

```
.*(best|top|vs|review*).*
```

### Transactional

```
.*(buy|cheap|price|purchase|order).*
```

---

## Case Insensitive Queries

---

Want to make queries case insensitive? Add (?i) at the start of the expression. Thanks Charly Wargnier for the tip ([buy the man a coffee](https://www.buymeacoffee.com/cwar05)).

```
(?i)^(who|what|where|when|why|how)[" "]
```

---

## Match Branded Terms

---

Often people searches have spelling mistakes in them. You can properly evaluate brand searches with regular expressions.

Let’s make an example with Linkedin possible misspellings.

- lnkedin, linkeidn, linkden, linedin, linkein, likedin, linkin, linkedin, linkd, amazon linkedn

You could be string with a long regex:

```
.*lnked*in.*|linke*idn.*|linkd*en.*|lined*in.*|linke*in.*|liked*in.*|link*in.*|linked*in.*|.*linkedn.*|.*linkd.*
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-29.png)

You could be very large at the risk of adding errors into it:

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-30.png)

Or be more specific.

```
.*l(i|n){1,2}(k|e).*n.*
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-28.png)

Multiple patterns can do.

```
.*l.*(i|n).*(n|k).*(e|d|i).*n.*
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-31.png)

---

## Compare Brand VS Non-Brand Traffic

---

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-62-833x1024.png)

---

## Check for Potential Content Injections

---

Content injection is a hack that injects webpages into your site including specific keywords. Here is an idea how you can check for common ones on your site.

Use this regex in the pages regular expression to check if it matches.

```
.*viagra.*|.*cialis.*|.*levitra.*|.*drugs.*|.*porn.*|.*www.*www.*
```

Could also check [special characters](https://www.jcchouinard.com/regex-in-google-search-console/#specchar) or not-available-yet solution of looking for [foreign characters](https://www.jcchouinard.com/regex-in-google-search-console/#foreign) in urls.

---

## Check WordPress Admin URLs

---

Pretty straight forward, check WordPress admin pages that seemed indexed.

```
.*wp-.*
```

---

## Edge Case Scenarios

### Show Postcodes in URLs

I came across a case where I needed to list URLs that ended with a postcode.

```
https://example.com/Sales-jobs-in-Wembley-HA0
https://example.com/Sales-jobs-in-Corstorphine-EH12
https://example.com/Marketing-jobs-in-Corstorphine-EH12
https://example.com/Retail-jobs-in-Bourton-BS22
```

In UK, postcodes consist of one or two letters, followed by one digit, two digits, or one digit and one letter.

```
.*-[A-Za-z]{1,2}(\d{1,2}|\d[A-Za-z])$
```

- `[A-Za-z]{1,2}`: Matches one or 2 letters
- `\d{1,2}`: Matches one or 2 numbers
- `\d[A-Za-z]`: Matches a number and a letter
- `( pat1 | pat2 )`: Grouping of OR patterns

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-58-1024x455.png)

---

## Should Work but Doesn’t

### Foreign Characters in URLs

According to the Re2 documentation, unicode character classes like this should work:

```
\p{Greek}
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-91.png)

This would be useful to identify URL patterns that have some of the foreign characters that are the most commonly used in content injection hacks.

```
.*\p{Hiragana}.*|.*\p{Cyrillic}.*|.*\p{Hangul}.*|.*\p{Han}.*|.*\p{Thai}.*
```

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-90-1024x327.png)

It works with Query RegExes, but it doesn’t work with URLs.

## From the Community

There are a lot of other great ideas out there, share them with me and I’ll post them here.

### A/B Testing

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-104.png)

### E-Commerce

Here’s one for e-Commerce stores.

![](https://www.jcchouinard.com/wp-content/uploads/2021/06/image-97.png)

### Additional RegExes

Some additional regular expressions for GSC from this [post](https://ciffonedigital.com/useful-google-search-console-regex-re2-that-i-use-every-day/) (thanks [Mike Ciffone](https://www.linkedin.com/in/mike-ciffone/))

```
# Matches URL slug
^[foo]+(?:-[bar]+)*$

# All urls within /page
(http|https):\/\/www.example.com\/page\/.*

# All urls between a certain slug and ending
(http|https):\/\/www.example.com\/slug\/[^\/]+\/page

# Matches all queries containing a specific term (all work)
\b(\w*foo\w*)\b
\b(\w*foo\sbar\w*)\b
^hello\sworld$

# Matches all queries containing "blue shoe" or "blue shoes"
(\W|^)blue\s{0,3}shoe(s){0,1}(\W|$) //works

# Matches all queries that contain "Ciffone" or "Ciffone Digital"
^.*(ciffone|ciffone digital).*$

# Match Word or Phrase in a List
(?i)(\W|^)(foo|bar|foo\sbar)(\W|$)
```

---

## Other Articles in the Series on Google Search Console

- [How to validate your site in GSC](https://www.jcchouinard.com/validate-site-in-google-search-console/)
- [How to use the Performance Report in Google Search Console](https://www.jcchouinard.com/performance-report-in-google-search-console/)
- [How to use the index coverage report](https://www.jcchouinard.com/index-coverage-report/)
- [How to use the URL Inspection Tool](https://www.jcchouinard.com/url-inspection-tool/)
- [How to use the Crawl Stats Report](https://www.jcchouinard.com/crawl-stats-report-in-google-search-console/)
- How to use (and not use) URL Removal tool in GSC (Coming soon…)
- How to use URL Parameters Tools Without Killing Your Site (Coming soon…)
- Google Search Console Use Cases (Coming soon…)
- [Regular Expressions (RegEx) in Google Search Console](https://www.jcchouinard.com/regex-in-google-search-console/)

---

## Other Resources

[Google’s examples of regular expressions for Google Search Console](https://support.google.com/a/answer/1371417?hl=en)

[#performanceregex](https://twitter.com/search?q=%23performanceregex&src=typed_query) on twitter

---

## Conclusion

This is it, you now know how to use regular expressions with Google Search Console

4.6/5 - (20 votes)

![jean-christophe chouinard seo expert in quebec city](https://www.jcchouinard.com/wp-content/uploads/2019/11/jean-christophe-chouinard-seo-expert-quebec.jpg)

[Jean-Christophe Chouinard](https://www.jcchouinard.com/author/jean-christophe-chouinard/)

Senior SEO Strategist at Tripadvisor, ex- Seek.com.au. Specialized in technical SEO and AI Search. Writer in Python, Information Retrieval, SEO and machine learning. Guest author at SearchEngineJournal, SearchEngineLand and OnCrawl.

[![SVG Image]](https://www.linkedin.com/in/jeanchristophechouinard/ "Linkedin")[![SVG Image]](https://twitter.com/chouinardjc "Twitter")[![SVG Image]](https://github.com/jcchouinard/ "Github")[![SVG Image]](https://www.youtube.com/@jcchouinard "Youtube")

[![SVG Image]](https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.jcchouinard.com%2Fregex-in-google-search-console%2F "Facebook")[![SVG Image]](https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fwww.jcchouinard.com%2Fregex-in-google-search-console%2F "Linkedin")[![SVG Image]](https://reddit.com/submit?url=https%3A%2F%2Fwww.jcchouinard.com%2Fregex-in-google-search-console%2F&title=Regular%20Expressions%20%28RegEx%29%20in%20Google%20Search%20Console "Reddit")[![SVG Image]](https://www.jcchouinard.com/regex-in-google-search-console/ "Pinterest")[![SVG Image]](https://twitter.com/intent/tweet?via=ChouinardJC&text=Regular%20Expressions%20%28RegEx%29%20in%20Google%20Search%20Console&url=https%3A%2F%2Fwww.jcchouinard.com%2Fregex-in-google-search-console%2F "X")[![SVG Image]](https://www.instagram.com/ "Instagram")

### Related posts:

1. [How to Validate Your Site in Google Search Console (GSC Example)](https://www.jcchouinard.com/validate-site-in-google-search-console/ "How to Validate Your Site in Google Search Console (GSC Example)")
2. [Sitemap Could not be Read (Sitemap Couldn’t fetch examples) in Google Search Console](https://www.jcchouinard.com/sitemap-could-not-be-read-couldnt-fetch-in-google-search-console/ "Sitemap Could not be Read (Sitemap Couldn’t fetch examples) in Google Search Console")
3. [How to connect Google Search Console with Google Data Studio?](https://www.jcchouinard.com/connect-search-console-and-data-studio/ "How to connect Google Search Console with Google Data Studio?")
4. [Boost Your SEO with Machine Learning: A Guide to GSC Using Python and Plotly](https://www.jcchouinard.com/visualize-gsc-with-python-plotly-and-machine-learning/ "Boost Your SEO with Machine Learning: A Guide to GSC Using Python and Plotly")
