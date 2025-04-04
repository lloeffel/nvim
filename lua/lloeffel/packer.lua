vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	
	use 'wbthomason/packer.nvim'
	
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                , branch = '0.1.x',
		 requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	-- Colorscheme
	use ({
		'navarasu/onedark.nvim',
		as = 'onedark',
		config = function()
			vim.cmd('colorscheme onedark')
		end
	})
    use ({
        'ellisonleao/gruvbox.nvim',
        as = 'gruvbox',
    })

	--Tree-sitter
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	
	--Tree-sitter Playground
	use('nvim-treesitter/playground')
	
	--PrimeAgen's Harpoon
	use('theprimeagen/harpoon')

	--Undo Tree
	use('mbbill/undotree')

	--Vim-Fugitive
	use('tpope/vim-fugitive')

	--LSP
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
    use({'hrsh7th/cmp-buffer'})
	--Mason
	use{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	}

    --snippets
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        run = "make install_jsregexp"
    })

    --lualine
    use({'nvim-tree/nvim-web-devicons'})
    use{
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true}
    }
end)

