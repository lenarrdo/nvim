local options = {
    expandtab = true,
    number = true,
    shiftwidth = 4,
    tabstop = 4,
    clipboard = "unnamedplus",
    colorcolumn = "80",
    confirm = true,
    ignorecase = true,
    list = true,
    relativenumber = true,
    scrolloff = 8,
    showmode = false,
    sidescrolloff = 8,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    spell = true,
    spelllang = "it,en",
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    timeout = true,
    timeoutlen = 500,
    undofile = true,
    undolevels = 10000,
    updatetime = 200,
    wrap = false,
    guicursor = "",
}

local global = {
    mapleader = " ",
    vimtex_view_method = "zathura",
    vimtex_compiler_latexmk = {
        continuous = 0,
    },
}

for name, value in pairs(options) do
    vim.opt[name] = value
end

for name, value in pairs(global) do
    vim.g[name] = value
end
