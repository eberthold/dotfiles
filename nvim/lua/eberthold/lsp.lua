local lspconfig = require("lspconfig")
local lsp_configurations = require('lspconfig.configs')
local util = require('lspconfig.util')

if not lsp_configurations.dart then
	lsp_configurations.dart = {
		default_config = {
			cmd = { 'dart', 'language-server', '--protocol=lsp' },
			filetypes = { 'dart' },
			root_dir = util.root_pattern 'pubspec.yaml',
			init_options = {
				onlyAnalyzeProjectsWithOpenFiles = true,
				suggestFromUnimportedLibraries = true,
				closingLabels = true,
				outline = true,
				flutterOutline = true,
			},
			settings = {
				dart = {
					completeFunctionCalls = true,
					showTodos = true,
				},
			},
		},
	}
end


local on_attach = function(client, bufnr)
	-- keymaps
end

require("lspconfig").dart.setup({
	on_attach = on_attach,
})

require('lspconfig').rust_analyzer.setup({
	on_attach = on_attach
})

-- setup mason with most used languages
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lemminx",
		"lua_ls",
	}
})

local lsp_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.keymap.set("n", "<leader>kd", vim.lsp.buf.format)
	end
end

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
require("mason-lspconfig").setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			on_attach = lsp_attach,
			capabilities = lsp_capabilities,
		})
	end,
})

require('blink.cmp').setup()

--local cmp = require("cmp")
--cmp.setup({
--	completion = {
	--	completeopt = 'menu,menuone,noinsert'
--	},
--	preselect = true,
--	mapping = cmp.mapping.preset.insert({
	--	['<down>'] = cmp.mapping.select_next_item(),
	--	['<up>'] = cmp.mapping.select_prev_item(),
	--	['<C-w>'] = cmp.mapping.abort(),
	--	['<C-Space>'] = cmp.mapping.complete(),
	--	['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
--	}),
--	sources = {
	--	{ name = "nvim_lsp" },
	--	{ name = "nvim_lua" },
	--	{ name = 'nvim_lsp_signature_help' },
	--	{ name = "luasnip" },
--	},
--	window = {
	--	-- completion = cmp.config.window.bordered(),
	--	documentation = cmp.config.window.bordered(),
--	},
--	sorting = {
	--	comparators = {
		--	cmp.config.compare.exact,
		--	cmp.config.compare.score,
		--	cmp.config.compare.sort_text
	--	}
--	},
--	snippet = {
	--	expand = function(args)
		--	require 'luasnip'.lsp_expand(args.body)
	--	end
--	},
--})
