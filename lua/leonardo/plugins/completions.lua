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

-- Cycle backwards with CTRL + H
vim.keymap.set({ "i", "s" }, "<C-h>",
function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end,
{silent = true})

--[[

NVIM-CMP

-- ]]

local cmp = require("cmp")

cmp.setup ({
  mapping = cmp.mapping.preset.insert({
    --[[ In questo modo se ho scritto qualcosa come richiesto da luaSnip, allora
    viene espanso quello. Altrimenti pesco la prima opzione dal menù. ]]
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() and not luasnip.expand_or_jumpable() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          cmp.confirm()
        end
      else
        fallback()
      end
    end, {"i","s","c",}),
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
