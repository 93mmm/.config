return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "pylsp",
                    "clangd",
                    "cmake",
                    "marksman",
                    "lua_ls",
                    "jdtls",
                    "bashls",
                    "gopls",
                }
            }
        end
    },
}
