local map = vim.keymap.set

-- Better up/down
map({ "n", "x" }, "j", "gj", { noremap = true, silent = true })
map({ "n", "x" }, "k", "gk", { noremap = true, silent = true })
map({ "n", "x" }, "gj", "j", { noremap = true, silent = true })
map({ "n", "x" }, "gk", "k", { noremap = true, silent = true })

-- Indentazione fiera
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "<", "<gv", { noremap = true })
map("v", ">", ">gv", { noremap = true })

-- CTRL+Backspace in insert mode.
map("i", "<C-H>", "<C-W>", { noremap = true })

-- Incolla senza modificare il registro
map("x", "<leader>p", '"_dP')

-- File explorer (oil.nvim)
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- CTRL+D, CTRL+U, G cursore sempre centrato
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "<s-g>", "<s-g>zz", { noremap = true })

-- CTRL+S al posto di s (colpa di leap.nvim)
map("n", "<C-s>", "s", { noremap = true })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- Fixa l'ultimo errore
map("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { noremap = true, silent = true })

-- Buffers
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>")
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>")
map("n", "<C-p>", "<cmd>BufferLinePick<cr>")
map("n", "<leader>cp", "<cmd>BufferLinePickClose<cr>")
map("n", "<leader>cl", "<cmd>BufferLineCloseRight<cr>")
map("n", "<leader>ch", "<cmd>BufferLineCloseLeft<cr>")
map("n", "<leader>co", "<cmd>BufferLineCloseOthers<cr>")

-- Formatter
map("n", "<leader>gf", vim.lsp.buf.format)
