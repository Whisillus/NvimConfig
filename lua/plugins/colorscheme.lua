
-- setup the colorschmem in config/lazy-config.lua

local colorscheme = {

  {
    "glepnir/zephyr-nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme zephyr]])
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },


}

return colorscheme
