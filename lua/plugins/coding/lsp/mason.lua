return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {},
    keys = {
      { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "basedpyright",
        "bashls",
        "cssls",
        "docker_compose_language_service",
        "docker_language_server",
        "dockerls",
        "dotls",
        "groovyls",
        "html",
        --        "jdtls",
        "jsonls",
        "lua_ls",
        "gopls",
        "ts_ls",
        "vue_ls",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "black",
        "prettier",
        "stylua",
        "isort",
      },
      auto_update = true,
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "debugpy",
        "delve",
        "js-debug-adapter",
      },
    },
  },
}
