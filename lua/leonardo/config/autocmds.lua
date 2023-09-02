-- Disable new line comment
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set wrap on .tex and .txt files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = {"*.tex", "*.txt"},
  group = group,
  command = "setlocal wrap"
})
