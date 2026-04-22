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
        "bash-language-server",
        "css-lsp",
        "docker-compose-language-server",
        "docker-language-server",
        "dockerfile-language-server",
        "dot-language-server",
        "groovy-language-server",
        "html-lsp",
        "jdtls",
        "json-lsp",
        "lua_ls",
        "gopls",
        "typescript-language-server",
        "vue-language-server",
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
