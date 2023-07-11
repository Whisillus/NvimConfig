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
  use 'dracula/vim'
  use({
  'glepnir/zephyr-nvim',
  requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })

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

  use 'nvim-lua/plenary.nvim'

  -- comment
  use 'numToStr/Comment.nvim'

  -- null-ls lint and format setup
  use 'jose-elias-alvarez/null-ls.nvim'

  -- treesitter syntax plugin
  use 'nvim-treesitter/nvim-treesitter'
  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  }
  use 'nvim-treesitter/nvim-treesitter-context'

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
    'saadparwaiz1/cmp_luasnip',
    {
        'L3MON4D3/LuaSnip',
        run = 'make install_jsregexp',
        requires = {
            'rafamadriz/friendly-snippets',
        },
    },
  }
  -- hop for jumping
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- lsp setup
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })

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
