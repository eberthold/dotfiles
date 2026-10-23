vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.number = true          -- relative line numbers
opt.relativenumber = true
opt.splitright = true      -- default split settings
opt.splitbelow = true
opt.expandtab = true       -- SPACES!
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.termguicolors = true   -- True Color Support (important for themes)
