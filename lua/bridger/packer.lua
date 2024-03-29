-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local lsp_zero=require('lsp-zero')
lsp_zero.extend_lspconfig()


require 'lspconfig'.volar.setup{
filetypes={'typescript','javascript','vue','json'}}

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ({
	  'EdenEast/nightfox.nvim', 
	  as = 'nightfox',
	  config = function()
  		vim.cmd ('colorscheme nightfox')
	end
})	
use('xiyaowong/transparent.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('nvim-tree/nvim-tree.lua')
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
 	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'rafamadriz/friendly-snippets'},
    {'L3MON4D3/LuaSnip'},
  }
}
  end)
