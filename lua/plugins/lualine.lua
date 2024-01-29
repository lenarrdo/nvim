require("lualine").setup({
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_b = { "diff", "diagnostics" },
    lualine_x = { "fileformat", "filetype" },
  },
})
