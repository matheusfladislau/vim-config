-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--  use ({
--	  'thedenisnikulin/vim-cyberpunk',
--	  as = 'cyberpunk',
--	  config = function()
--		  vim.cmd('colorscheme cyberpunk')
--	  end
--  })

--  use ({
--      'comfysage/evergarden',
--      as = 'evergarden',
--      config = function()
--          vim.cmd('colorscheme evergarden')
--      end
--  })

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use ({
      'morhetz/gruvbox',
      as = 'gruvbox', 
      config = function()
          vim.cmd('colorscheme gruvbox')
      end
  })

  use { 'nvim-treesitter/playground' }
  use { 'ThePrimeagen/harpoon' }
  use { 'mbbill/undotree' }
  use { 'tpope/vim-fugitive' }
  use { 'ThePrimeagen/vim-be-good' }
  use { 'vim-airline/vim-airline-themes' }
  use { 'vim-airline/vim-airline' }

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
end)
