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
