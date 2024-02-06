require("obsidian").setup({
  workspaces = {
    {
      name = "obsidian",
      path = "~/vaults/obsidian",
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 1,
  },
  disable_frontmatter = true,
})

vim.keymap.set("n", "<leader>os", "<CMD>ObsidianSearch<CR>")
