vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        }
      }
    }
  },
  filters = {
    dotfiles = true,
  },
  auto_close = true,
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
