return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "folke/neodev.nvim",                   opts = {} },
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        require("neodev").setup({})
        local servers = {
            clangd = {
                filetypes = { "c", "cpp", "objc", "objcpp" }
            },
            pyright = {},
            jsonls = {},
            marksman = {},
            lua_ls = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = false },
                },
            },
        }
        local mason_lspconfig = require("mason-lspconfig")

        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local keymap = vim.keymap

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }

                opts.desc = "Show LSP references"
                keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

                opts.desc = "Go to declaration"
                keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

                opts.desc = "Show LSP definitions"
                keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

                opts.desc = "Show LSP implementations"
                keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

                opts.desc = "Show LSP type definitions"
                keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

                opts.desc = "See available code actions"
                keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

                opts.desc = "Smart rename"
                keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

                opts.desc = "Show documentation for what is under cursor"
                keymap.set("n", "K", vim.lsp.buf.hover, opts)
                keymap.set("i", "<C-s>", vim.lsp.buf.hover, opts)

                opts.desc = "Restart LSP"
                keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
            end,
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "✗",
                    [vim.diagnostic.severity.WARN] = "!",
                    [vim.diagnostic.severity.INFO] = "i",
                    [vim.diagnostic.severity.HINT] = "→",
                },
            },
            virtual_text = {
                prefix = "●",
                spacing = 2,
            },
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })

        mason_lspconfig.setup_handlers({
            function(server_name)
                vim.lsp.config(server_name, {
                    capabilities = capabilities,
                    settings = servers[server_name],
                    filetypes = (servers[server_name] or {}).filetypes,
                })
                vim.lsp.enable(server_name)
            end,
        })

        local util = require("vim.lsp.util")
        local orig_make_position_params = util.make_position_params

        util.make_position_params = function(win, encoding)
            local clients = vim.lsp.get_active_clients({ bufnr = 0 })
            local client_encoding = encoding

            if not client_encoding and #clients > 0 then
                client_encoding = clients[1].offset_encoding or "utf-16"
            end

            return orig_make_position_params(win, client_encoding)
        end
    end,
}
