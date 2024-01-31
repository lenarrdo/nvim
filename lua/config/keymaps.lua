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

-- File explorer
map("n", "-", "<CMD>Ex<CR>")

-- CTRL+D, CTRL+U, G cursore sempre centrato
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "<s-g>", "<s-g>zz", { noremap = true })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- Moving through diagnostics
map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
