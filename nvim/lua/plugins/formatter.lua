return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                sql = { "sql_formatter" },
                pgsql = { "sql_formatter" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                lua = { "stylua" },
                go = { "gofmt" },
            },
        })
        vim.keymap.set({ "n" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, {})
    end,
}
