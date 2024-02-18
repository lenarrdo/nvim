local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    c = { "clang_format" },
    java = { "google-java-format" },
    javascript = { "deno_fmt" },
    json = { "jq" },
    lua = { "stylua" },
    markdown = { "deno_fmt" },
    nix = { "nixfmt" },
    sh = { "shfmt" },
    typescript = { "deno_fmt" },
  },
})

conform.formatters.shfmt = {
  prepend_args = { "-i", "2" },
}

vim.keymap.set("n", "<leader>gf", "<CMD>lua require('conform').format()<CR>")
