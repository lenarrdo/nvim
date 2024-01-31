-- Installing lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- List of installed plugins
local plugins = {

  { -- Colorscheme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- Utility
  "akinsho/bufferline.nvim",
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",

  -- Visual
  "goolord/alpha-nvim",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  "nvim-tree/nvim-web-devicons",
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  -- Note taking (LaTeX and Markdown)
  "lervag/vimtex",
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "plasticboy/vim-markdown",
    branch = "master",
    dependencies = {
      "godlygeek/tabular",
    },
  },

  -- LSP related
  "L3MON4D3/LuaSnip",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  "hrsh7th/nvim-cmp",
  "mfussenegger/nvim-jdtls",
  "neovim/nvim-lspconfig",
  "saadparwaiz1/cmp_luasnip",
  "stevearc/conform.nvim",
}

require("lazy").setup(plugins)
require("Comment").setup()
require("gitsigns").setup()
require("noice").setup()

-- Configuration files
require("plugins.colorscheme")
require("plugins.lsp")
require("plugins.alpha")
require("plugins.treesitter")
require("plugins.lualine")
require("plugins.bufferline")
require("plugins.telescope")
