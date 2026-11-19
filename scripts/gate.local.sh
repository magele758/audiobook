# 项目门禁（自有层）。技术栈 Node(npm)，Node ≥ 22。
# 仓库原有入口是 npm run ci：单测 test/*.test.js，再加 scripts/regression.mjs。
# 回归脚本只允许访问本机；scripts/gate.mjs 会拒绝其中的非本机 URL。

run_unit() {
  node_install
  echo "  \$ npm run ci"
  npm run ci
}
