
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

}

return colorscheme
