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
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme catppuccin")
        end,
    },

    -- Utility
    "lervag/vimtex",
    "lewis6991/gitsigns.nvim",
    "ggandor/leap.nvim",
    "numToStr/Comment.nvim",
    "akinsho/bufferline.nvim",
    "windwp/nvim-autopairs",
    "stevearc/oil.nvim",

    -- Visual
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",
    "nvim-lualine/lualine.nvim",
    {
        "goolord/alpha-nvim",
        lazy = true,
    },

    -- LSP && Snippets && Formatter
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
        },
    },
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "mfussenegger/nvim-jdtls",
    "nvimtools/none-ls.nvim",
    "nvim-lua/plenary.nvim",
}

-- Load installed plugins
require("lazy").setup(plugins)

-- Config
require("plugins.lsp")
require("plugins.treesitter")
require("plugins.completions")
require("plugins.alpha-nvim")
require("plugins.other")
