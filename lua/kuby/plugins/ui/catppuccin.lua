return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-nvim")
      end,
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      term_colors = true,
      integrations = {
        blink_pairs = true,
        bufferline = true,
        lazy_nvim = true,
        lualine = true,
        noice = true,
        notify = true,
        treesitter_context = true,
        snacks = {
            enabled = true
        },
        lsp_trouble = true,
        which_key = true,
      },
    },
  },
}
