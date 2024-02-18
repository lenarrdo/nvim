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
map("n", "<leader>-", "<CMD>Rex<CR>")

-- CTRL+D, CTRL+U, G cursore sempre centrato
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "<S-g>", "<S-g>zz", { noremap = true })

-- Clear search with <ESC>
map({ "i", "n" }, "<ESC>", "<CMD>noh<CR><ESC>")

-- Moving through diagnostics
map("n", "gl", "<CMD>lua vim.diagnostic.open_float()<CR>")
map("n", "<leader>[", "<CMD>lua vim.diagnostic.goto_prev()<CR>")
map("n", "<leader>]", "<CMD>lua vim.diagnostic.goto_next()<CR>")

-- Disable macros
map("n", "q", "<Nop>", { noremap = true })

-- Enable ZenMode
map("n", "<C-a>", "<CMD>ZenMode<CR>")
