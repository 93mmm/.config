return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent = true,
            italic_comments = true,
            borderless_telescope = false,
        })
        vim.cmd("colorscheme catppuccin-mocha")
    end
}
