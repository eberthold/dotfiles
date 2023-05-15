require("symbols-outline").setup {
	show_numbers = true,
	show_relative_numbers = false,
}

vim.keymap.set("n", "<leader>o", "<cmd>SymbolsOutline<CR>")
