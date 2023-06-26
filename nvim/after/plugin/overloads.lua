require("lsp-overloads").setup();

vim.keymap.set({"n", "i"}, "<C-k>", "<cmd>LspOverloadsSignature<CR>", { noremap = true, silent = true })

