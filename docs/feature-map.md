# 产品功能地图

从 `PRD.md`、`需求.md`、`需求记录.md` 和当前代码提炼。预算和使用信号原文没有写，标成待确认。

| 用户入口 | 用户可观察的行为 | 从哪里改 | 从哪里验证 | AC | 成本预算 | 延迟预算 | 使用信号 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Web 导入 PDF / 网页 | 解析后出现在资料库 | `src/server.js`、`src/extract.js` | `test/audiobook.test.js`、`test/chapters-pdf.test.js` | listen#AC-1 | 不涉及 | 待确认 | 待确认 |
| 章节识别 | 只按标题规则切章，不提供人工标注 | `src/chapters.js` | `test/chapters-pdf.test.js` | listen#AC-1 | 不涉及 | 不涉及 | 待确认 |
| 短段落合成 | 一章再切成不超过 500 字的段，用参考音调用 Index-TTS | `src/paragraphs.js`、`src/indextts.js` | `test/paragraphs.test.js`、`test/indextts.test.js` | listen#AC-2、listen#AC-3 | 待确认 | 待确认 | 待确认 |
| Web 播放器 | 按资料库播放、下载。需求.md 写明本阶段不含删除 | `public/`、`src/player.js` | `scripts/regression.mjs` | listen | 不涉及 | 待确认 | 待确认 |
| macOS 客户端 | 仓库里有 `client/macos` | `client/macos` | 待确认：`npm test` 不包含它 | 待确认 | 不涉及 | 待确认 | 待确认 |

待确认（现有文档互相打架，没有替你选边）：

- 生成单位：`需求.md`「已决定」写一章一个音频文件；当前代码和最新提交按短段落合成。
- 声音模型：PRD 写了后续训练自己的声音；`需求.md`「已决定」写本阶段不训练，用参考音合成。
- 播放器是否做删除、笔记、播客导出。语音笔记在 `需求.md` 里提过，没有验收。
