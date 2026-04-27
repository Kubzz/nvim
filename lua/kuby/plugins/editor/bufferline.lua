return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "catppuccin/nvim"
        },
        config = function()
            require("bufferline").setup({
                highlights = require("catppuccin.special.bufferline").get_theme()
            })
        end,
        opts = {
            options = {
                mode = "buffers",
                show_buffer_icons = true, 
                always_show_bufferline = true,
                separator_style = "slant",
            }
        },
        keys = {
            { "<Leader>bp", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<Leader>bn", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<S-Right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "<Leader>bs", "<cmd>BufferLinePick<cr>", desc = "Pick Buffer" }
        }
    }
}
