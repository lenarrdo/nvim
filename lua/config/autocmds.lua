local autocmd = vim.api.nvim_create_autocmd

-- Disable new line comment
autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Highlight on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Forget current snippet when entering normal mode
autocmd("ModeChanged", {
  pattern = '*',
  callback = function()
    if ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
      and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
      and not require("luasnip").session.jump_active then
      while require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()] ~= nil do
        require("luasnip").unlink_current()
      end
    end
  end
})

-- Set wrap and disable color column on .tex and .txt files
autocmd("BufEnter", {
  pattern = {"*.tex", "*.txt"},
  command = "setlocal colorcolumn=0 wrap"
})

-- Compiling and executing programs
autocmd("BufEnter", {
  pattern = {"*.java"},
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :vsp | term javac % && java % && rm *.class<cr>")
  end
})

autocmd("BufEnter", {
  pattern = {"*.c"},
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :vsp | term gcc % -o a.out && ./a.out && rm *.out<cr>")
  end
})

autocmd("BufEnter", {
  pattern = {"*.tex"},
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :VimtexCompile<cr>")
  end
})

-- Automatically remove junk TeX files
autocmd("VimLeavePre", {
  pattern = {"*.tex"},
  command = "VimtexClean"
})
