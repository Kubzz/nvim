return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts_extends = { "ensure_installed" },
    opts = {
      ensure_installed = {

        -- LSP
        "bash-language-server",
        "css-lsp",
        "cucumber-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "groovy-language-server",
        "helm-ls",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "nginx-language-server",
        "pyright",
        "sqls",
        "terraform-ls",
        "typescript-language-server",
        "vetur-vls",
        "vim-language-server",
        "yaml-language-server",

        -- DAP
        "bash-debug-adapter",
        "debugpy",
        "js-debug-adapter",

        -- Linter
        "codespell",
        "eslint_d",
        "hadolint",
        "htmlhint",
        "jsonlint",
        "luacheck",
        "markdownlint",
        "npm-groovy-lint",
        "ruff",
        "shellcheck",
        "sonarlint-language-server",
        "yamllint",

        -- Formatter
        "black",
        "htmlbeautifier",
        "prettier",
        "sql-formatter",
        "shfmt",
        "stylua",
        "yamlfmt"
      }
    },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)    
      end)

      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end)
    end,
  }
}
