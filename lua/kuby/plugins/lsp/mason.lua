return {
    {
        "mason-org/mason.nvim",
        cmd = "Mason",
        build = ":MasonUpdate",
        opts = {},
        keys = {
            { "<Leader>m", "<cmd>Mason<cr>", desc = "Mason" },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                
                "lua_ls"
            }
        }
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
            "stylua",
        }
        },
        auto_update = true,
    }
}
