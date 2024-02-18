vim.lsp.start({
  name = "lua-language-server",
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "i", "f", "t", "rep", "s", "fmta", "fmt" },
      },
    },
  },
  root_dir = ".",
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.lua" },
  callback = function()
    vim.opt_local.colorcolumn = "100"
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
