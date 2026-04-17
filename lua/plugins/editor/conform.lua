return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        init = function()
            vim.o.formatexpr = "v:lua.require('conform').formatexpr()"
        end,
        opts = {
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_fs = {
                lua = { "stylua" },

                python = { "black" }
            }
        }
    }
}
