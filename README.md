# audiobook

把 PDF 和网页拆成章节和短段落，用 Index-TTS 的参考音生成有声书，在 Web 播放器里听。macOS 客户端在 `client/macos`。

原有文档没有挪走，也没有改写：

- `PRD.md`
- `需求.md`（含「已决定」）
- `需求记录.md`

## 开发

- 安装：`npm ci`
- 门禁：`scripts/gate.sh fast`，里面跑的是仓库原来的 `npm run ci`（单测 + `scripts/regression.mjs`）
- 启动：`npm start`。端口用环境变量 `PORT`，默认 4173

和文档不一致的产品判断写在 `docs/feature-map.md`，标了待确认。
