vim.lsp.start({
  name = "denols",
  cmd = { "deno", "lsp" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  settings = {
    deno = {
      enable = true,
      suggest = {
        imports = {
          hosts = {
            ["https://deno.land"] = true,
          },
        },
      },
    },
  },
})

vim.g.markdown_fenced_languages = {
  "ts=typescript",
}

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.ts" },
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<CMD>:wa | :vsp | term deno run %<CR>")
    vim.opt_local.colorcolumn = "80"
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
