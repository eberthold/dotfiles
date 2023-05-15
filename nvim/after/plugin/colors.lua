function ColorMyPencils(color)
	color = color or "catppuccin-frappe"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "inactive", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#babbf1' })
	vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ef9f76', bold=true })
	vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#babbf1' })
end

ColorMyPencils()
