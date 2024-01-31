require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "java" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "latex", "markdown" },
})
