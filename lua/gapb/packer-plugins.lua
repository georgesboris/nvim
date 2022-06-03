return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'arcticicestudio/nord-vim'

    -- Nvim Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Nvim Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {{'kyazdani42/nvim-tree.lua'}},
      config = function() require('nvim-tree').setup {} end
    }

    -- Telescope
    -- Used for search and fuzzy find
    --
    -- Note: `brew install ripgrep` for better behavior
    --
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = { theme = "dropdown" },
        		    git_files = { theme = "dropdown" },
		            live_grep = { theme = "dropdown" },
                }
            }
        end
    }

    -- Language Servers
    --   - LspInstallerl provides an UI to interact with available LS through :LspInstallInfo
    --   - nvim-lspconfig provides configuration for LS's
    --   - nvim-cmp handles autocomplete for snippets and language servers
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-vsnip',
    }

    -- Elm-Pair
    -- use {
    --   'jwoundenberg/elm-pair',
    --   rtp = 'neovim-plugin',
    --   ft = 'elm'
    -- }

end)
