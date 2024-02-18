vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.txt" },
  callback = function()
    vim.opt_local.colorcolumn = "0"
    vim.opt_local.wrap = true
  end,
})
