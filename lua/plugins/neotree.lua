local neotree_parameter = {
    close_if_last_window = false,
    filesystem = {
        toggle = true,
        filtered_items = {
            hide_dotfiles = true,
            hide_gitignored = true,
        },
        window = {
            mappings = {
                -- ["/"] = "fuzzy_finder",
                ["/"] = "filter_on_submit",
            },
            fuzzy_finder_mappings = {
                ["<C-k>"] = "move_cursor_up",
                ["<C-j>"] = "move_cursor_down",
            },
        },
        follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
        },
    },
}
local neotree_setup = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = neotree_parameter,
    config = function(_, opts)
        require("neo-tree").setup(opts)
    end,
}

return neotree_setup
