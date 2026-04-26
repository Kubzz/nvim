return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {},
      picker = {
        sources = {
          explorer = {},
        },
      },
    },
    keys = {
        { "<Leader>fe",  function() require("snacks").picker.explorer() end, desc = "File Explorer" },
    },
  },
}
