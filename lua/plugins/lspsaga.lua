
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

    opts = {    
        border_style = "round",
        finder = {
            keys = {
                shuttle = "w[",
            },
        },
        lightbulb = {
            enable = false,
            sign = false,
            virtual_text = false,
        },
    },

    config = function(_, opts)
        require('lspsaga').setup(opts)
    end,
}

return lspsaga_setup 
