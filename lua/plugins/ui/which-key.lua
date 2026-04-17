return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false, loop = true })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      {
        "<Leader>b",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "Buffer",
      },
      {
        "<Leader>c",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "Coding",
      },
      {
        "<Leader>f",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "File Search",
      },
      {
        "<Leader>g",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "Git",
      },
      {
        "<Leader>p",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "Problems",
      },
      {
        "<Leader>s",
        function()
          require("which-key").show({ global = true, loop = true })
        end,
        desc = "Search",
      },
    },
  },
}
