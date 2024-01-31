local capabilities = vim.lsp.protocol.make_client_capabilities()
local config = {
  cmd = { "jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities),
  handlers = {
    ["language/status"] = function(_, result)
      print("ServiceReady")
    end,
    ["$/progress"] = function(_, result, ctx)
    end,
  },
}

vim.keymap.set("n", "<leader>rj", "<cmd>:wa | :vsp | term javac % && java % && rm *.class<cr>")
vim.opt.colorcolumn = "100"
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

require("jdtls").start_or_attach(config)
