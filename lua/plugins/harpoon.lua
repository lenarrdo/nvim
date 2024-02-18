local map = vim.keymap.set
local harpoon = require("harpoon")

map("n", "<leader>a", function()
  harpoon:list():append()
end)
map("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

map("n", "<C-m>", function()
  harpoon:list():select(1)
end)
map("n", "<C-j>", function()
  harpoon:list():select(2)
end)
map("n", "<C-k>", function()
  harpoon:list():select(3)
end)
map("n", "<C-l>", function()
  harpoon:list():select(4)
end)
map("n", "<C-i>", function()
  harpoon:list():select(5)
end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
map("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- REQUIRED
harpoon:setup()
