-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  	}

    use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd('colorscheme catppuccin')
		end
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- LSP
    --use{
    --    'neoclide/coc.nvim', branch ='release'
    --}
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "jose-elias-alvarez/null-ls.nvim"   -- for linting purposes
    use "folke/trouble.nvim"                -- for LSP\Linter warnings\errors
    use "hrsh7th/nvim-cmp"                    -- completion plugin
    use "hrsh7th/cmp-buffer"                  -- buffer completions
    use "hrsh7th/cmp-path"                    -- path completions
    use "hrsh7th/cmp-cmdline"                 -- cmdline completions
    use "saadparwaiz1/cmp_luasnip"            -- snippet completions
    use "hrsh7th/cmp-nvim-lua"                -- lua vim completions
    use "hrsh7th/cmp-nvim-lsp"                -- LSP completions
    use "hrsh7th/cmp-nvim-lsp-signature-help" -- function parameters completions
    use "L3MON4D3/LuaSnip"             -- snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of ready-to-use snippets

    -- discord presence
    use 'andweeb/presence.nvim'

    use 'tpope/vim-fugitive'

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use 'lewis6991/gitsigns.nvim'
    use 'theprimeagen/harpoon'
    use 'feline-nvim/feline.nvim'

    use "Hoffs/omnisharp-extended-lsp.nvim"
end)
