local capabilities = vim.lsp.protocol.make_client_capabilities()
local config = {
  cmd = { "jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities),
  handlers = {
    ["language/status"] = function(_, result)
      print("ServiceReady")
    end,
    ["$/progress"] = function(_, result, ctx) end,
  },
}
require("jdtls").start_or_attach(config)

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.java" },
  callback = function()
    vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :vsp | term javac % && java % && rm *.class<cr>")
    vim.opt_local.colorcolumn = "100"
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
