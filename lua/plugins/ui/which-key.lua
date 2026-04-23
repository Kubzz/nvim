return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = 200,
      spec = {
        { "<Leader>b", group = "Buffers" },
        { "<Leader>c", group = "Coding" },
        { "<Leader>f", group = "File Search" },
        { "<Leader>g", group = "Git" },
        { "<Leader>cj", group = "Java" },
        { "<Leader>n", group = "Noice" },
        { "<Leader>p", group = "Problems" },
        { "<Leader>s", group = "Search" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false, loop = true })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
