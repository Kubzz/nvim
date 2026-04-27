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
        { "<Leader>f", group = "Files" },
        { "<Leader>g", group = "Git" },
        { "<Leader>p", group = "Problems" },
        { "<Leader>s", group = "Search" },
      },
      triggers = {
        { "<auto>", mode = "nxso" },
        { "j", mode = "nxso", group = "Java" },
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
