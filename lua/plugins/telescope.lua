
local telescope_setup = {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build"
    },
    mappings = {
      i = {
        -- move
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-n>"] = "move_selection_next",
        ["<C-p>"] = "move_selection_previous",
        -- hist move
        ["<Down>"] = "cycle_history_next",
        ["<Up>"] = "cycle_history_prev",
        -- preview move 
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",

        ["<C-c>"] = "close",
      }
    },
    initial_mode = "insert",
    layout_strategy = "flex",
  },

  pickers = {
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    -- ui-select = {
    --   require("telescope.themes").get_dropdown {
    --     -- even more opts
    --   }
    --
    --   -- pseudo code / specification for writing custom displays, like the one
    --   -- for "codeactions"
    --   -- specific_opts = {
    --   --   [kind] = {
    --   --     make_indexed = function(items) -> indexed_items, width,
    --   --     make_displayer = function(widths) -> displayer
    --   --     make_display = function(displayer) -> function(e)
    --   --     make_ordinal = function(e) -> string
    --   --   },
    --   --   -- for example to disable the custom builtin "codeactions" display
    --   --      do the following
    --   --   codeactions = false,
    --   -- }
    -- }
  }
}

local telescope_config = {

    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 
            'nvim-telescope/telescope-fzf-native.nvim', 
            build = 'make',
        },
        'nvim-telescope/telescope-ui-select.nvim',
    },

    keys = {
        { "<leader>ff", desc = "lsp_document_symbols" },
        { "<C-p>", desc = "find files" },
        { "<leader>fl", desc = "live grep" },
    },

    opts = telescope_setup,
    config = function(_, opts) 
        require('telescope').setup(opts)
        require('telescope').load_extension('fzf')
        require('telescope').load_extension('ui-select')
    end,


}

return telescope_config
