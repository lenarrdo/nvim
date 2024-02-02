require("obsidian").setup({
  workspaces = {
    {
      name = "personal",
      path = "~/vaults/personal",
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 1,
  },
  disable_frontmatter = true,
})
