require("telescope").setup()

vim.cmd [[colorscheme kanagawa]]
vim.cmd[[colorscheme tokyonight]]
require('gitsigns').setup()

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
require("scope").setup({})
