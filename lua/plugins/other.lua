require("telescope").setup()

vim.cmd[[colorscheme tokyonight]] -- vim.cmd [[colorscheme kanagawa]]

require('gitsigns').setup()

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require("scope").setup({})

require("minintro").setup()
