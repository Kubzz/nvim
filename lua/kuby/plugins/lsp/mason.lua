return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {},
    keys = {
      { "<Leader>m", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {

        -- GoLang
        "gopls",

        -- Lua
        "lua_ls",

        -- Python
        "basedpyright",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {

        -- GoLang
        "delve",
        "golangci-lint",
        "goimports",
        "golines",

        -- Java
        "google-java-format",

        -- Lua
        "stylua",

        -- Python
        "black",
        "isort",
        "ruff",
      },
    },
    auto_update = true,
  },
}
