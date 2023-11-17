local map = vim.keymap.set

-- Better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Indentazione fiera
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "<", "<gv", { noremap = true })
map("v", ">", ">gv", { noremap = true })

-- CTRL+Backspace in insert mode.
map("i", "<C-H>", "<C-W>", { noremap = true })

-- Incolla senza modificare il registro
map("x", "<leader>p", "\"_dP")

-- File explorer
map("n", "<leader>pv", "<cmd>:Ex<cr>")

-- CTRL+D, CTRL+U, G cursore sempre centrato
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "<s-g>", "<s-g>zz", { noremap = true })

-- Vimtex
map("n", "<leader>ll", "<cmd>:VimtexCompile<cr>")

-- Open Lazy
map("n", "<leader>l", "<cmd>:Lazy<cr>")

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- Telescope
map("n", "<leader>ff", "<cmd>:Telescope find_files<cr>")

-- Fixa l'ultimo errore
map("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { noremap = true, silent = true })

-- Buffers
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>")
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>")

-- ToggleTerm
map("n", "<C-o>", "<cmd>:ToggleTerm<cr>")
map("t", "<C-o>", [[<C-\><C-n>]])
map("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
