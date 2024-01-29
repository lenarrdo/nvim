vim.lsp.start({
  name = "lua-language-server",
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
  root_dir = ".",
})
