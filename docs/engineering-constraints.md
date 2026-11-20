# 工程约束（唯一出处）

从已提交代码提炼。

## `src/paragraphs.js`

- 规则：送给 Index-TTS 的一段文字不超过 500 字，默认按 320 字再切。空正文返回空列表。
  - 违反后果：合成请求抛 `text exceeds 500 characters`，这一段没有音频。
  - 来源：`src/paragraphs.js`、`src/indextts.js`。

## `src/indextts.js`

- 规则：`baseUrl`、文本、参考音三者缺一就抛错。
  - 违反后果：若改成默认声音，生成结果会变成另一把声音且不报错。
  - 来源：`src/indextts.js`。

## `scripts/regression.mjs`

- 规则：回归只访问本机。`scripts/gate.mjs` 用正则拒绝其它 http(s) 主机。
  - 违反后果：`npm run ci` 在跑回归之前就失败。
  - 来源：`scripts/gate.mjs`。

## `src/server.js`

- 规则：端口只读 `PORT`，缺省 4173。
  - 违反后果：不看环境变量就再启动一次，绑定失败或连到已经在听的进程。
  - 来源：`src/server.js`。

## GitHub Actions

- PR：`ci.yml` 的 `merge` 门禁包含 `fast`，因此只执行一次 `npm run ci`（单测 + 离线回归）。`secret-scan` 独立跑；`ci-ok` 要求 `merge` 和 `secret-scan` 均成功，只允许单独的 `fast` 跳过。
- 推送到 `main`：保留 `ci.yml` 的 `fast` 及旧 `Tests / ci`。旧工作流不再接收 PR 事件。
