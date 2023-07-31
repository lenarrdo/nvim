local luasnip = require("luasnip")

luasnip.config.set_config({

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  -- store_selection_keys = "<Tab>",

  -- Load custom snippets
  require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets/" })
})

local M = {}

function M.expand_or_jump()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end

function M.jump_next()
  if luasnip.jumpable(1) then
    luasnip.jump(1)
  end
end

function M.jump_prev()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end

function M.change_choice()
  if luasnip.choice_active() then
    luasnip.change_choice(1)
  end
end

function M.reload_package(package_name)
  for module_name, _ in pairs(package.loaded) do
    if string.find(module_name, '^' .. package_name) then
      package.loaded[module_name] = nil
      require(module_name)
    end
  end
end

local set = vim.keymap.set

local mode = { 'i', 's' }

set(mode, '<Tab>', M.expand_or_jump)
set(mode, '<S-Tab>', M.jump_prev)
set(mode, '<c-l>', M.change_choice)
