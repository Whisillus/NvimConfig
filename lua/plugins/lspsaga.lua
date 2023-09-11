
local lspsaga_setup = {
    'nvimdev/lspsaga.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons', -- optional
    },
    ft = {
        'c',
        'cpp',
        'cuda',
        'cmake',
        'lua',
        'python',
    },

    config = function()
        require('lspsaga').setup({})
    end,
}

return lspsaga_setup
