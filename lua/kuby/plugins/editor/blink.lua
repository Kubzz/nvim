return {
  {
    "saghen/blink.download",
  },
  {
    "saghen/blink.pairs",
    version = "*",
    dependencies = "saghen/blink.download",
    opts = {
      enabled = true,
    },
    config = function()
      require("blink.pairs").setup({
        highlights = {
          groups = {
            "BlinkPairsRed",
            "BlinkPairsYellow",
            "BlinkPairsBlue",
            "BlinkPairsOrange",
            "BlinkPairsGreen",
            "BlinkPairsPurple",
            "BlinkPairsCyan",
          },
        },
      })
    end,
  },
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        ghost_text = {
          enabled = true,
          show_with_selection = true,
        },
      },
      keymap = {
        preset = "super-tab",
      },
      snippets = {
        preset = "mini_snippets",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}
