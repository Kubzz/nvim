return {
    {
        "nvimdev/dashboard-nvim",
        lazy = false,
        event = "VimEnter",
        opts = {
            theme = "doom",
            config = {
                center = {
                    { action = 'Telescope find_files', desc = " Find File", icon = " ", key = "f" },
                    { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
                    { action = 'Telescope oldfiles', desc = " Recent Files", icon = " ", key = "r" },
                    { action = 'Telescope live_grep', desc = " Find Text", icon = " ", key = "g" },
                    { action = function()
                        require("telescope.builtin").find_files({
                            cwd = vim.fn.stdpath("config"),
                            prompt_title = "Neovim Config",
                            hidden = false,
                        })
                    end,
                    desc = " Config", icon = " ", key = "c" },
                   -- { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
                    { action = "Mason", desc = " Mason",     icon = " ", key = "m" },
                    { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                    { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            }
        }
    }
}
