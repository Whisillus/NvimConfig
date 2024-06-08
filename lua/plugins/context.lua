
local param = {

    enable = true,
}

local context_config = {

    'nvim-treesitter/nvim-treesitter-context',

    opts = param,
    config = function(_, opts) 
        require('treesitter-context').setup(opts)
    end,
}

return context_config
