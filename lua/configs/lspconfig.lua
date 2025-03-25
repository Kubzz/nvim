-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { 
  "bashls",
  "cssls",
  "cucumber_language_server",
  "docker_compose_language_service",
  "dockerls",
  "groovyls",
  "helm_ls",
  "html",
  "jsonls",
  "lua_ls",
  "nginx_language_server",
  "pyright",
  "sqls",
  "terraformls",
  "ts_ls",
  "vuels",
  "vimls",
  "yamlls"
}
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
