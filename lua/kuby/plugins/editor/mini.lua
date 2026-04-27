return {
    {
        "nvim-mini/mini.nvim",
        version = false,
        config = function()
            require("mini.snippets").setup()
            require("mini.move").setup({
                mappings = {
                    left = "<M-Left>",
                    right = "<M-Right>",
                    Up = "<M-Up>",
                    down = "<M-Down>",

                    line_left = "<M-Left>",
                    line_right = "<M-Right>",
                    line_up = "<M-Up>",
                    line_down = "<M-Down>",
                }
            })
        end,
    }
}
