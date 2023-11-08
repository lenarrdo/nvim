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
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "warmer"
      }
      require("onedark").load()
    end
  },

  -- Utility
  "lervag/vimtex",
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = { disable_filetype = { "tex", "text" } }
  },
  {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "lewis6991/gitsigns.nvim"
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup{}
    end
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },

  -- Visual
  "nvim-tree/nvim-web-devicons",
  "nvim-treesitter/nvim-treesitter",
  {
    "goolord/alpha-nvim",
    lazy = true,
  },
  "nvim-lualine/lualine.nvim",

  -- LSP && Snippets
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
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
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "mfussenegger/nvim-jdtls",
}

-- Load installed plugins
require("lazy").setup(plugins)

-- Config
require("leonardo.plugins.lsp")
require("leonardo.plugins.treesitter")
require("leonardo.plugins.completions")
require("leonardo.plugins.alpha-nvim")
require("leonardo.plugins.lualine")
require("leonardo.plugins.gitsigns")
require("leonardo.plugins.toggleterm")
