
local treesitter_setup = {

    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    keys = {
      { "<CR>", desc = "Increment selection" },
      { "<BR>", desc = "Decrement selection", mode = "x" },
    },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "cmake",
        "cuda",
        "json",
        "lua",
        "python",
        "query",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        }, -- keymaps
      }, -- incremental_selection
    }, -- opts

    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end,

}

return treesitter_setup
