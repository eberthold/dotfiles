local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
--vim.g.maplocalleader = " "

require('lazy').setup({
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},

	'nvim-telescope/telescope-ui-select.nvim',

	-- Themes
	{
		'Shatur/neovim-ayu',
		name = 'ayu'
	},

	{
		"catppuccin/nvim",
		name = "catppuccin"
	},

	-- UI Sugar
	"petertriho/nvim-scrollbar",

	"akinsho/toggleterm.nvim",

	{ 
		'nvim-treesitter/nvim-treesitter', 
		 build = ':TSUpdate' 
	},
	'nvim-treesitter/nvim-treesitter-context',
	'mbbill/undotree',

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	-- Autocompletion
	'hrsh7th/nvim-cmp',  -- Autocompletion plugin
	'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-nvim-lsp-signature-help',

	-- Debugging
	{
		'mfussenegger/nvim-dap',
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap"
		},
	},

	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},

	{
		'simrat39/symbols-outline.nvim'
	},

	{
		"andythigpen/nvim-coverage",
		dependencies = "nvim-lua/plenary.nvim",
	},

	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	},
})
