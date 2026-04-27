return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = {
          "stylua",
        },
        python = {},
        go = {},
        java = {},
        javascript = {},
        typescript = {},
      },
    },
    keys = {
      --    { "<Leader>fF",
    },
  },
}
