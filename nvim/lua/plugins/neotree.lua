require("neo-tree").setup({
  window = {
    position = "right",
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        ".git",
        ".DS_Store",
      },
    },
  },
})
