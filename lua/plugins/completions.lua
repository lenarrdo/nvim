local luasnip = require("luasnip")
local cmp = require("cmp")

luasnip.config.setup({
	enable_autosnippets = true,
	require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets/" }),
})

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping(function(fallback)
			local entry = cmp.get_selected_entry()
			if luasnip.expand_or_jumpable() and not entry then
				luasnip.expand_or_jump()
			elseif cmp.visible() then
				if entry then
					cmp.confirm()
				else
					cmp.select_next_item()
					cmp.confirm()
				end
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-j>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-k>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
		{ name = "path" },
	}, {
		{ name = "buffer" },
	}),
})
