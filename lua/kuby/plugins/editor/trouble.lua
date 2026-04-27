return {
    {
        "folke/trouble.nvim",
        events = "VeryLazy",
        opts = {},
        cmd = "Trouble",
        keys = {
            { "<Leader>pp", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
            { "<Leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" }, 
        }
    }
}
