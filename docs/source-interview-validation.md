# 新正文的作者访谈修复

## 实际失败记录

2026-10-10 的 `Create Floor Plan Editor SEO page` 测试只提供了关键词和两家
竞品链接。执行记录确认调用了 `seo-landing-page`、`seo-writing` 和
`distinctive-content`；它检查产品代码与文档后，将 packet 标为 `ready`，
以 `0 asked / 0 answered / 10 remaining` 直接进入 Stage 3。
测试项目的 landing-page 与 distinctive-content 主文件和本仓库修改前
SHA-256 一致，因此这次跳过访谈并非未安装该阶段或主文件版本过旧。

原契约允许研究与产品资料支持核心承诺时直接通过，只为无法获取的必要
私人事实追问。修复将“事实支持充分”和“作者访谈已处理”设为独立条件；
新正文默认先访谈，并记录 intake 状态及其依据。研究仍能支撑事实，不能
独自充当作者访谈。资料中的 AI 与排名因果主张不作为执行规则。

## 代表性请求追踪

以下是按已修改文档逐步核对的路线推演，未运行独立模型生成实验。

| 请求 | 预期行为 |
| --- | --- |
| Floor Plan Editor 关键词、竞品链接，代码与产品资料齐全，写新 landing page | Stage 1 简要资料盘点 → Stage 2 初步读者任务 → seo-writing gate，传入“新正文”范围 → intake pending、packet interview-needed → 在 chat 问“你做或测试这个 Floor Plan Editor 时，哪个具体修改场景最能体现它的价值？” → 等待答案；可保存计划骨架，Stage 2 pending、Next stage 2，Stage 3 未开始 |
| 答复一个具体修改场景 | 原 packet 记录回答、归属、限制与 planned use；必要时一次追问一个细节，总计最多十问；intake completed 后补充研究，按证据返回 ready/provisional，再保存完整计划并写正文 |
| 作者说没有亲身经历 | 将该回答记为 intake completed；使用可检查的资料与明确标注的分析，不编造作者或客户经历 |
| 用户明确说不用提问、只按现有来源写 | intake skipped by user，记录原指令；事实门槛仍适用，缺少核心支持时阻止正文 |
| 已提供适配当前任务的具体作者经验、决策或案例 | intake supplied，记录精确来源与 planned use，复用材料而不重复询问 |
| 只给功能列表、代码，或旧 ready packet 且访谈为零 | 新正文仍需 intake；ready 标签不证明访谈已完成 |
| 一个只有关键词的新 blog / guest post / full PR | blog 经 seo-writing 调用 gate；guest/PR 直接调用 gate；均一次一问并等待；guest/PR 在 chat 返回阶段状态，不默认保存 |
| 只要 plan / brief | 可以完成不完整计划，intake not required；保存或返回未来问题，不要求回答。之后写新正文须重新判断 intake，保留已有计数 |
| 导出 saved plan 的 prompt | 嵌入原计划与来源包、intake 依据及计数；导出本身不访谈。执行 prompt 时复用已解决 intake，续答 pending 问题，或为未做 intake 的计划先提问 |
| 已有文章的 typo、humanize、限定 feature correction、audit 或 PR component | 沿原有范围复用受支持的内容；仅追问当前修改必需的私人事实，不重新进行完整作者访谈 |
| 续答或第十问后仍缺核心证据 | 更新原 packet，不重置计数；到上限仍无法支撑时返回具体 blocker 或较窄可行承诺 |

## 验证边界

`ruby scripts/validate-skills.rb` 检查执行契约、packet 字段、主文件大小、
UI 元数据和本地链接；`git diff --check` 检查补丁格式。它们不证明模型
下一次一定会提问，也不评估答案质量。行为验收需重新调用安装后的 skill，
确认第一个问题出现在 chat、等待答案且 Stage 3 尚未开始。

本次结构回归检查把新 validator 应用于 `HEAD` 的临时快照，旧文件以
exit 1 被拒绝：landing/blog 缺少 `source_interview: before_new_body`，
共享 packet 缺少 intake 状态与依据字段。修改后的源文件校验为 exit 0。
这是固定契约的回归检查，不能替代上面的实际调用验收。
