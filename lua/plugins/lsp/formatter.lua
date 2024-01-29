require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    java = { "google-java-format" },
    c = { "clang_format" },
    json = { "prettier" },
  },
})

vim.keymap.set("n", "<leader>gf", '<CMD>lua require("conform").format()<CR>')
