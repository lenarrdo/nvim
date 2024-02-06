vim.lsp.start({
  name = "rnix-lsp",
  cmd = { "rnix-lsp" },
  root_dir = ".",
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
