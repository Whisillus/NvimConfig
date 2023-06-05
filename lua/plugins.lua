-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'tomasr/molokai'

  -- bufferline
  use {
    'akinsho/bufferline.nvim', 
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- dependancies
  use 'nvim-lua/plenary.nvim'

  -- null-ls lint and format setup
  use 'jose-elias-alvarez/null-ls.nvim'

  -- treesitter syntax highlight
  use 'nvim-treesitter/nvim-treesitter'
  
  -- telescope file/line finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = 'make',
  }

  -- cmp completion and snipping
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer', 
    'hrsh7th/cmp-path',  
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  }

  -- lsp setup
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- nvim-tree file explorer
  use {
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons"
  }

  -- git sign for change
  use {
    'lewis6991/gitsigns.nvim',
  }

end)
