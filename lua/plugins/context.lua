
local param = {

    enable = true,
    max_lines = 5,
}

local context_config = {

    'nvim-treesitter/nvim-treesitter-context',

    opts = param,
    config = function(_, opts) 
        require('treesitter-context').setup(opts)
    end,
}

return context_config
