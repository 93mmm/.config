require("telescope").setup()

vim.cmd [[colorscheme kanagawa]]

require('gitsigns').setup()

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
