--[[

LUASNIP

-- ]]
local luasnip = require("luasnip")

luasnip.config.set_config({

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Load custom snippets
  require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets/" })
})

-- Expand and cycle through a snippet with Tab.
vim.keymap.set({ "i", "s" }, "<Tab>",
function()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end,
{silent = true})

-- Cycle backwards with Shift + Tab
vim.keymap.set({ "i", "s" }, "<S-Tab>",
function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end,
{silent = true})

-- Change option with CTRL + L
vim.keymap.set({ "i", "s" }, "<c-l>",
function()
  if luasnip.choice_active() then
    luasnip.change_choice(1)
  end
end,
{silent = true})

--[[

NVIM-CMP

-- ]]

local cmp = require("cmp")

cmp.setup ({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-j>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, {"i", "s"}),
		["<C-k>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, {"i", "s"}),
  }),
  sources = cmp.config.sources({
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "path" },
  },
  {
    { name = "buffer" },
  })
})
