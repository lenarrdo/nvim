local map = vim.keymap.set

require("bufferline").setup({
  highlights = require("catppuccin.groups.integrations.bufferline").get(),
})

map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>")
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>")
map("n", "<C-p>", "<cmd>BufferLinePick<cr>")
map("n", "<leader>cp", "<cmd>BufferLinePickClose<cr>")
map("n", "<leader>cl", "<cmd>BufferLineCloseRight<cr>")
map("n", "<leader>ch", "<cmd>BufferLineCloseLeft<cr>")
map("n", "<leader>co", "<cmd>BufferLineCloseOthers<cr>")
