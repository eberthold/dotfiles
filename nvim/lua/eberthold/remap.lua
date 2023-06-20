--vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- enable move code and auto align on move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make page jumps better by centering the cursor to see more of the surrounding area
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")

-- center find next occurence also
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- improved paste without overriding register
vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p", { desc="paste clipboard" })

-- toggle file tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree focus<CR>", { desc="toggle file tree"})

-- system wide yank
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", {desc = "system wide yank" })

-- format document via lsp with vs like shortcut
vim.keymap.set("n", "<leader>kd", "gg=G<C-O>")

-- show inline diagnostic popup
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- show code action
vim.keymap.set({ "n", "v" }, "<leader>a", ":lua vim.lsp.buf.code_action()<CR>")

-- lsp remaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "lsp go to definition" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, {desc = "lsp go to implementation" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {desc = "lsp go to declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, {desc = "lsp find references "})
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)

-- easier window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "select window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "select window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "select window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "select window right" })
