require("toggleterm").setup {
  size = 10,
  hide_numbers = true,
  shade_terminals = false,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end
