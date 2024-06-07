bufferline_setup = {
    options = {
        mode = "buffers",

        sort_by = function(buffer_a, buffer_b)
            -- vim.notify(vim.inspect(buffer_a))
            -- add custom logic
            return buffer_a.name < buffer_b.name
        end,
    },
}

bufferline = {

    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = bufferline_setup,
    config = function(_, opts)
        require("bufferline").setup(opts)
    end,
}

return bufferline
