-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
-- local servers = { "pyright", "html", "cssls", "ts_ls", "tailwindcss" }
local servers = {  }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.tailwindcss.setup{}
