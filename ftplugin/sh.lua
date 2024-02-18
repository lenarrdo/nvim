vim.lsp.start({
  name = "bashls",
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh" },
  single_file_support = true,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.sh" },
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<CMD>:wa | :vsp | term ./%<CR>")
    vim.opt_local.colorcolumn = "80"
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
