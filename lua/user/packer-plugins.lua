return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	--
	-- Colorscheme
	--
	use { "EdenEast/nightfox.nvim", tag = "v1.0.0" }

	--
	-- Treesitter (:TS)
	--
	-- Used for syntax highlighting
	-- and single-file syntax tree functionalities.
	--
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	--
	-- Autocomplete
	--
	use {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
		'hrsh7th/vim-vsnip',
		'hrsh7th/cmp-vsnip',
	}

	--
	-- Telescope (:Telescope)
	-- Used for search and fuzzy find
	--
	-- Note: `brew install ripgrep` for better behavior
	--
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use { 'nvim-telescope/telescope-file-browser.nvim' }
	use { 'nvim-telescope/telescope-project.nvim' }

	--
	-- Language Server
	--
	use {
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
	}

	--
	-- Statusline and Tabline
	--
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--
	-- Minimap
	--
	-- System requirements:
	--
	-- `brew install code-minimap`
	--
	use {
		'wfxr/minimap.vim',
		run = ':!cargo install --locked code-minimap'
	}
end)
