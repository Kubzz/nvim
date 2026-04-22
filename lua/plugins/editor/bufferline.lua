return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "catppuccin/nvim",
    },
    opts = {
      options = {
        mode = "buffers",
        always_show_bufferline = true,
        separator_style = "slant",
      },
    },
    specs = {
      {
        "catppuccin/nvim",
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.special.bufferline").get_theme()
          end
        end,
      },
    },
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
      {
        "<leader>br",
        "<Cmd>BufferLineCloseRight<CR>",
        desc = "Delete Buffers to the Right",
      },
      {
        "<leader>bl",
        "<Cmd>BufferLineCloseLeft<CR>",
        desc = "Delete Buffers to the Left",
      },
      { "<Leader>bp", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<Leader>bn", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "<Leader>b<Right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "<Leader>b<Left>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<Leader>bP", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
      { "<Leader>bN", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
      { "<leader>bj", "<cmd>BufferLinePick<cr>", desc = "Pick Buffer" },
      { "<Leader>bd", "<cmd>bdelete<cr>", desc = "Delete Buffer" },
    },
  },
}
