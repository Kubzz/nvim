return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup()
      vim.cmd.colorscheme("catppuccin")
    end,
    opts = {
      term_colors = true,
      transparent_background = true,
      background = {
        dark = "mocha",
      },
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      integrations = {
        dashboard = true,
        blink = true,
        rainbow_delimiters = true,
        cmp = true,
        fzf = true,
        gitsigns = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        mini = true,
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}
