local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find all files" })
vim.keymap.set('n', '<leader>fp', builtin.git_files, { desc = "find project files" })
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "find text" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "open buffers" })
vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = "show commands" })
vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = "show marks" })
vim.keymap.set('n', '<leader>fa', builtin.quickfix, { desc = "show quickfixes" })

vim.keymap.set('n', '<leader>fli', builtin.lsp_implementations, { desc = "show implementations" })
vim.keymap.set('n', '<leader>flr', builtin.lsp_references, { desc = "show references" })
vim.keymap.set('n', '<leader>fls', builtin.lsp_document_symbols, { desc = "show symbols" })
vim.keymap.set('n', '<leader>fld', builtin.lsp_definitions, { desc = "show definitions" })
vim.keymap.set('n', '<leader>flD', builtin.lsp_type_definitions, { desc = "show type definitions" })

vim.keymap.set('n', '<leader>fgc', builtin.git_commits, { desc = "show project commits" })
vim.keymap.set('n', '<leader>fgf', builtin.git_bcommits, { desc = "show commits for file" })
vim.keymap.set('n', '<leader>fgb', builtin.git_branches, { desc = "show git branches" })
vim.keymap.set('n', '<leader>fgs', builtin.git_status, { desc = "show git status" })

require("telescope").setup {
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_cursor {}
		}
	}
}

require("telescope").load_extension("ui-select")
