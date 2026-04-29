return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = 200,
      spec = {
        { "<Leader>b", group = "Buffer" },
        { "<Leader>c", group = "Code" },
        { "<Leader>d", group = "Debug" },
        { "<Leader>f", group = "Files" },
        { "<Leader>g", group = "Git" },
        { "<Leader>j", group = "Java" },
        { "<Leader>p", group = "Problems" },
        { "<Leader>s", group = "Search" },
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.add({
        { "j", group = "Java", mode = "nxso" },
      })
    end,
  },
}
