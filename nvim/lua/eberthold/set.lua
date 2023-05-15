-- absolute number on current line and relative for others
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

-- no line wrapping
vim.opt.wrap = false

vim.swapfile = false
vim.backup = false

vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.opt.undofile = true

-- scroll premature so viewport scrolls early
vim.opt.scrolloff = 8

-- neotree
-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = '-command'
vim.opt.shellquote = ''
vim.opt.shellxquote = ''
