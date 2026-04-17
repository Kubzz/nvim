return {
    {
        "folke/trouble.nvim",
        cmd = { "Trouble" },
        opts = {
            modes = {
                lsp = {
                    win = { position = "right"  }
                }
            }
        },
        keys = {
            { "<leader>px", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
            { "<leader>pX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
            { "<leader>ps", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols (Trouble)" },
            { "<leader>pS", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references/definitions/... (Trouble)" },
            { "<leader>pL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
            { "<leader>pQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
            { "[q", function()
                        if builtin.is_open() then
                            builtin.prev({ skip_groups = true, jump = true })

                        else
                            local ok, err = pcall(vim.cmd.cprev)
                            if not ok then
                                vim.notify(err, vim.log.levels.ERROR)
                            end
                        end
                    end, desc = "Previous Trouble/Quickfix Item", },
            { "]q", function()
                        if builtin.is_open() then
                            builtin.next({ skip_groups = true, jump = true })
                        else
                            local ok, err = pcall(vim.cmd.cnext)
                            if not ok then
                                vim.notify(err, vim.log.levels.ERROR)
                        end
                    end
                end, desc = "Next Trouble/Quickfix Item", },
        },
    }
}
