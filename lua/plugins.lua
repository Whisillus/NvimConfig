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

  -- dependancies
  use 'nvim-lua/plenary.nvim'

  -- null-ls lint and format setup
  use 'jose-elias-alvarez/null-ls.nvim'

  -- treesitter syntax highlight
  use 'nvim-treesitter/nvim-treesitter'
  
  -- telescope file/line finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- lsp setup
  use {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  }

end)
