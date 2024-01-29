vim.lsp.start({
  name = "clangd",
  cmd = { "clangd" },
  root_dir = ".",
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.keymap.set(
  "n",
  "<leader>rj",
  "<cmd>:wa | :vsp | term gcc % -o a.out && ./a.out && rm *.out<cr>"
)
vim.opt.expandtab = false
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
