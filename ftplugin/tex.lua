vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :VimtexCompile<cr>")

vim.opt.colorcolumn = "0"
vim.opt.wrap = true

vim.api.nvim_create_autocmd("VimLeavePre", {
  pattern = { "*.tex" },
  command = "VimtexClean",
})
