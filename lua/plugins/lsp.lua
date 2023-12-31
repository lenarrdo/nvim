local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
end)

-- Configure lua language server for neovim
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "fmta", "i", "s", "f", "t", "rep" },
			},
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "jdtls", "lua_ls", "clangd" },
})

lsp.skip_server_setup({ "jdtls" })

lsp.setup()
