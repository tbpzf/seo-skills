# Helpful content 项目审查

审查目标：帮助作者写出更符合真实搜索需求、更有用、带有依据充分的
判断与独特贡献的内容。验收对象是读者得到的答案及其可信度。

审查覆盖全部 10 个技能、调用关系、分支参考、示例、UI 提示、README
和结构验证脚本。使用 `ask-matt` 的流程与职责划分视角，以及
`writing-for-agents` 的触发、渐进披露、完成条件和单一事实来源原则。

## 主要发现与修复

| 优先级 | 原有问题 | 当前行为 | 主要落点 |
| --- | --- | --- | --- |
| P1 | 搜索意图可以只有分类，没有实际依据或验证结果 | 保存查询解释、预期答案形式、已检查的证据、竞争解释和不确定性；未研究时保留假设 | [audience strategy](../seo-audience-strategy/SKILL.md)、[writing plan](../seo-writing/SKILL.md) |
| P1 | 来源门槛把作者经验与可信研究、分析混在一起 | 事实支持与作者访谈分别记录；新正文默认先访谈，研究与透明分析仍可支撑内容，私人经验需真实来源 | [distinctive content](../distinctive-content/SKILL.md)、[research and judgment](../distinctive-content/references/research-and-judgment.md) |
| P1 | 一条具体素材或限制可能让宽泛的承诺通过 | 检查核心承诺的支持程度，尝试执行文章提供的方法；必要步骤与决策缺失会阻止发布 | [shared standard](../distinctive-content/references/helpful-content.md)、[final writing review](../seo-writing/references/editorial-review.md) |
| P1 | 计划导出只保证关键词表，可能丢失来源与判断边界 | 完整嵌入已保存计划，复用章节、来源包、证据状态、待答问题与计数 | [plan export](../seo-landing-prompt/references/plan-export.md) |
| P1 | PR 将直接提供的事实视为已核实，且来源门槛先于读者选择 | 区分提供、检查、假设和未知；先确定记者任务与新闻角度；引用批准不证明结果声明 | [press release](../seo-pr/SKILL.md) |
| P2 | 访谈门槛与保存计划互相冲突，重新调用也可能丢失状态 | 可保存不完整计划；必要问题使 Stage 2 保持待完成，续答更新原来源包；可选缺口安全省略 | [landing artifacts](../seo-landing-page/references/artifacts.md)、[blog artifacts](../seo-blog/references/artifacts.md) |
| P2 | 每章都被要求使用独特素材或留下 proof gap | 每章提供具体答案，并按需映射独特素材；必要背景可以说明无需独特来源，proof gap 不能替代答案 | [source audit](../distinctive-content/references/audit.md)、[writing](../seo-writing/SKILL.md) |
| P2 | 改写侧重文风，可能保护错误的模板标题或弱化实质 | 保护方法、条件、示例、证据和限制；允许授权范围内的标题调整，最终再检查读者任务 | [humalizer](../humalizer/SKILL.md) |
| P2 | 模板默认关键词规模、模块和标题字数诱发填充 | 只保留用户要求的数量与长度，结构按读者任务选择 | [landing prompt](../seo-landing-prompt/SKILL.md)、[skeleton](../seo-landing-prompt/prompt-skeleton.md) |
| P2 | 小范围修订或公司简介也可能进入完整来源访谈 | 复用支持充分的内容与来源，仅为当前修改所必需的事实追问；PR component 单独路由 | [guest routes](../seo-guest-post/references/routes.md)、[PR components](../seo-pr/SKILL.md) |
| P2 | 语法检查固定采用美式英语 | 根据指定语言变体与实际 CLI 能力选择；不支持时保留原拼写并报告限制 | [Harper](../harper-grammar/SKILL.md) |
| P2 | README 声称 PR 自动调用 audience strategy，实际没有 | 文档与现有路线一致；PR 使用新闻与记者任务 | [README](../README.md) |

## 完成条件与职责

共享标准集中在 `distinctive-content/references/helpful-content.md`，随技能
一起安装。策略、写作、改写和最终审核都指向它；详细分支仍按需要读取。
`seo-writing/SKILL.md` 的冗长审核规则移至相关步骤链接的参考，主文件保留
模式、步骤、产物格式和完成条件。

Landing Page 与 Blog 继续拥有保存和合并；Guest Post 默认在 chat 返回，
只在用户要求时保存。支持技能返回阶段结果。计划保留完整来源包，status
记录状态、下一步与最终发现。编辑流程完成与可发布状态分开判断。

观点的检查链为：事实或归属明确的经验 → 推理 → 建议 → 适用条件与替代。
独特贡献可以来自更好的解释或综合，不要求每篇原创数据或反常识立场。
未经比较，不声称竞争页面都没有某个信息；示例不伪装成真实客户成果。

## 代表性路线推演

这些检查是按文档执行契约的手工推演，不是独立模型生成实验或真实读者测试。

| 请求与材料 | 预期路线及检查结果 |
| --- | --- |
| 有已检查的一手公开来源，作者没有亲身经历，写实用教程 | 读者简报 → 一次一问的作者访谈；记录作者没有相关经历的回答后，用已检查来源和透明分析完成来源包、计划与教程，不生成第一人称经历 |
| 产品工作流明确，但“节省 80%”没有测量依据 | 保留受支持的工作流；省略可选数字并记录缺口；数字若是核心承诺则缩小承诺或停止正文 |
| 商业落地页关键词指向不支持的功能 | 保留原关键词及冲突；保存计划，阻止新正文；不默默替换关键词或编造功能 |
| 必须使用作者私人实测结果，但公开研究无法证明 | 只问一个必要问题；保存原包与计数，Stage 2 待完成；续答先更新包，达到十问上限仍无支持则 blocked |
| 用户只要计划，关键经验尚未提供 | 返回并保存不完整计划、缺口与后续问题；计划请求可以完成，正文未开始，可发布状态未评估 |
| 完整保存计划导出为可复用 prompt | 原样嵌入计划和来源包；保留已有待答问题与计数；不重新选关键词或替换章节 |
| 语法与文风都很好，但教程缺少关键输入或判断步骤 | 最终读者任务走查指出具体位置与修复；必要缺口未修复时 publication readiness blocked |
| 对原稿做限定 typo 修改或 humanize | 复用已支持内容；完成授权修改；原稿其他实质问题进入审计，不启动无关访谈 |
| Guest Post 只读审计 | 返回具体段落和修复建议；不改原稿、不新建计划、不默认保存 |
| 新闻事件已核实，但客户收益未核实 | 先选记者任务，省略可选收益；保留可检查的新闻事实；核心事件未知则停止正文 |
| 只写公司 boilerplate 或 contact component | 单独核查组件相关事实，不要求新新闻事件，不进入整篇 release 访谈 |
| 指定英式英语，但 Harper 支持能力不明 | 检查实际 help；可支持则选对应变体，否则保留拼写并报告限制；不默默改为美式 |

## 验证边界

运行 `ruby scripts/validate-skills.rb` 检查全部技能的结构、字段、父子交接、
UI 元数据与本地引用，并使用 `git diff --check` 检查补丁。新增结构检查
只保证共享质量标准能被找到、来源包字段完整和执行契约一致。

还需要真实内容样本和目标读者反馈来衡量输出质量。后续可选取同一组
关键词、来源和读者任务，对修改前后内容做盲审：读者能否完成任务、
核心论断能否追溯、判断是否有适用边界、是否减少再次搜索的必要。
流量或排名单独变化无法证明这些技能带来了更有帮助的内容。
