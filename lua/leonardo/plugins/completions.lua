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
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = "luasnip" },
    { name = "nvim_lsp" },
  },
  {
    { name = "buffer" },
  })
})

