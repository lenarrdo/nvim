vim.lsp.start({
  name = "nixd",
  cmd = { "nixd" },
  filetypes = { "nix" },
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.nix" },
  callback = function()
    vim.opt_local.colorcolumn = "100"
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
