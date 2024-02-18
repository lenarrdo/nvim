vim.lsp.start({
  name = "clangd",
  cmd = { "clangd" },
  root_dir = ".",
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.c" },
  callback = function()
    vim.keymap.set(
      "n",
      "<leader>rj",
      "<cmd>:wa | :vsp | term gcc % -o a.out && ./a.out && rm *.out<cr>"
    )
    vim.opt_local.colorcolumn = "80"
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
  end,
})
