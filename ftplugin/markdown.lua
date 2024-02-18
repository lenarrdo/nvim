vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<CMD>MarkdownPreviewToggle<CR>")

    vim.opt_local.colorcolumn = "80"
    vim.opt_local.wrap = true
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
