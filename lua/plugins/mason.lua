local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = require("core.servers"),
  automatic_installation = true
})

for _, value in ipairs(require("core.servers")) do
  lspconfig[value].setup {
    capabilities = capabilities
  }
end

