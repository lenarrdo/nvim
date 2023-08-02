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

  -- Theme
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end
  },

  -- Utility
  "nvim-tree/nvim-tree.lua",
  "lervag/vimtex",
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },

  -- Visual
  "nvim-tree/nvim-web-devicons",
  "nvim-treesitter/nvim-treesitter",
  "lukas-reineke/indent-blankline.nvim",
  {
    "goolord/alpha-nvim",
    lazy = true,
  },
  "nvim-lualine/lualine.nvim",

  -- LSP && Snippets
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
    }
  },
  {
    "L3MON4D3/LuaSnip",
    version = "2.*",
    build = "make install_jsregexp"
  },
  "saadparwaiz1/cmp_luasnip",
  "mfussenegger/nvim-jdtls",
}

-- Load installed plugins
require("lazy").setup(plugins)

-- Config
require("leonardo.plugins.lsp")
require("leonardo.plugins.nvim-tree")
require("leonardo.plugins.treesitter")
require("leonardo.plugins.lua-snip")
require("leonardo.plugins.alpha-nvim")
