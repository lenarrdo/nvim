-- Installing lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin list
local plugins = {
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require 'nordic' .load()
    end
  },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
    }
  },
  {
    "L3MON4D3/LuaSnip",
    version = "2.*",
    build = "make install_jsregexp"
  },
  "saadparwaiz1/cmp_luasnip",
  "mfussenegger/nvim-jdtls",
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  "nvim-treesitter/nvim-treesitter",
  "lervag/vimtex",
  "lukas-reineke/indent-blankline.nvim",
}

-- Load installed plugins
require("lazy").setup(plugins)

-- Config
require("leonardo.plugins.lsp")
require("leonardo.plugins.nvim-tree")
require("leonardo.plugins.treesitter")
require("leonardo.plugins.lua-snip")
