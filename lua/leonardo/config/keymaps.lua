local map = vim.keymap.set

-- Compilazione ed esecuzione.
map("n", "<leader>rj", "<cmd>:wa | :sp | term javac % && java % && rm *.class <cr>", { desc = "Java" })
map("n", "<leader>rc", "<cmd>:wa | :sp | term g++ % && ./a.out && rm *.out <cr>", { desc = "C++" })
map("n", "<leader>ra", "<cmd>:wa | :sp | term javac % && java -ea % && rm *.class <cr>", { desc = "Java -ea" })

-- CTRL+Backspace in insert mode.
map("i", "<C-H>", "<C-W>", { noremap = true }) -- Linux
-- map("i", "<Esc><BS>", "<C-W>", { noremap = true }) -- Mac

-- Possibilità di spostare testo evidenziato con K e J
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- CTRL+D, CTRL+U, G cursore sempre centrato
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })
map("n", "<s-g>", "<s-g>zz", { noremap = true })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
