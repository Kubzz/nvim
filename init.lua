-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

require("config.lazy")
