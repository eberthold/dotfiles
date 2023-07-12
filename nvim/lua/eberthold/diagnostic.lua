vim.diagnostic.config({
	virtual_text = {
		-- source = "always",  -- Or "if_many"
		prefix = '●', -- Could be '■', '▎', 'x'
		severity = {
			min = vim.diagnostic.severity.INFO
		}
	},
	underline = {
		severity = {
			min = vim.diagnostic.severity.WARN
		}
	},
	update_in_insert = true,
	severity_sort = true,
	float = {
		source = "always", -- Or "if_many"
	},
})
