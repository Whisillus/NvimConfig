
bufferline_setup = {
  options = {
        mode = "buffers",
    },
}

bufferline = {

    "akinsho/bufferline.nvim",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
    opts = bufferline_setup,
    config = function(_, opts)
        require('bufferline').setup(opts)
    end,
}

return bufferline
