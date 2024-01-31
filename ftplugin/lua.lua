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
