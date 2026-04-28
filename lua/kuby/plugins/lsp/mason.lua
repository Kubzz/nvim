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

        -- Python
        "basedpyright",

        -- Lua
        "lua_ls",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {

        -- Java
        "google-java-format",

        -- Python
        "black",
        "isort",
        "ruff",

        -- Lua
        "stylua",
      },
    },
    auto_update = true,
  },
}
