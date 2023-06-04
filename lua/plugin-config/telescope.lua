
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local telescope_setup = {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker

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
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').setup(telescope_setup)
require('telescope').load_extension('fzf')

