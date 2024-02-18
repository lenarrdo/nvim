local options = {
  expandtab = true,
  number = true,
  shiftwidth = 2,
  tabstop = 8,
  clipboard = "unnamedplus",
  colorcolumn = "80",
  conceallevel = 2,
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
}

local global = {
  mapleader = " ",
  -- LaTeX
  vimtex_view_method = "zathura",
  vimtex_compiler_latexmk = {
    continuous = 0,
  },
  -- Markdown
  mkdp_theme = "light",
  mkdp_browserfunc = "OpenMarkdownPreview",
  mkdp_auto_close = 0,
  mkdp_combine_preview = 1,

  vim_markdown_math = 1,
  vim_markdown_folding_disabled = 1,
}

for name, value in pairs(options) do
  vim.opt[name] = value
end

for name, value in pairs(global) do
  vim.g[name] = value
end

vim.cmd([[
  function OpenMarkdownPreview (url)
    execute "silent ! firefox --new-window " . a:url
  endfunction
]])
