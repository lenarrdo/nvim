-- For plugins that require minimal config or no config at all.
local null_ls = require("null-ls")
require("leap").add_default_mappings()
require("Comment").setup()
require("gitsigns").setup()
require("oil").setup()

require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get(),
})

require("nvim-autopairs").setup({
	disable_filetype = { "tex", "text" },
	enable_bracket_in_quote = false,
})

require("lualine").setup({
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_b = { "diff", "diagnostics" },
		lualine_x = { "fileformat", "filetype" },
	},
})

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
	},
})
