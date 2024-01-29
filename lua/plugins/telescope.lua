local builtin = require("telescope.builtin")
local map = vim.keymap.set

map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fh", builtin.help_tags, {})
map("n", "<leader>fs", builtin.lsp_document_symbols, {})

require("telescope").setup({})
