vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.tex" },
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :VimtexCompile<cr>")
    vim.opt_local.colorcolumn = "0"
    vim.opt_local.wrap = true
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  pattern = { "*.tex" },
  command = "VimtexClean",
})
