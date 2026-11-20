# 文档索引

| 文档 | 用途 | 谁更新 |
|---|---|---|
| `../PRD.md` | 接入前就有的产品需求 | 人 |
| `../需求.md` | 接入前的语音笔记和「已决定」 | 人 |
| `../需求记录.md` | 接入前的需求记录 | 人 |
| `product/vision.md` | 定位、目标用户、非目标 | 人 |
| `roadmap.md` | 阶段、退出标准、非目标 | 人（agent 可更新状态列） |
| `backlog.md` | 还没有验收规格的方向 | 人 / agent |
| `feature-map.md` | 用户入口 → 实现 → 验证，成本 / 延迟预算与使用信号 | 改入口的那个 PR |
| `models.md` | 模型与服务商的固定版本、变更记录（附 eval 结果与回滚方式） | 换模型 / 改参数的那个 PR |
| `engineering-constraints.md` | 工程约束唯一出处（按代码路径分节） | 发现约束的那个 PR |
| `specs/` | 需求规格（为什么 / 做什么） | 人 + agent |
| `plans/` | 实现计划（怎么做 / 切片） | agent |
| `adr/` | 架构决策 | agent 起草，人确认 |
| `handoff/` | 会话交接 | agent |
| `retro/` | 复盘 / 事故 | agent 起草，人确认 |
| `testing-strategy.md` | 测试分层与门禁 | 人 |
| `verification/` | 阶段性 / 发布前验证报告 | agent |

命名：`YYYY-MM-DD-<slug>.md`（adr 用 `NNNN-<slug>.md`）。每个目录下的 `_template.md` 是模板，复制后改名。
