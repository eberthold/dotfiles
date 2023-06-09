function ApplyColors(color)
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "inactive", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#9199CC' })
	vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFCC66', bold=true })
	vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#9199CC' })
end

ApplyColors("ayu-mirage")
