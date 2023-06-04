-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local map = vim.api.nvim_set_keymap

map("n", "<F9>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

require("nvim-tree").setup()

-- unused
local nvimtree_keymap= {
  { key = { "o", "<2-LeftMouse>" }, action = "edit" },
  { key = "<CR>", action = "system_open" },
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  { key = "i", action = "toggle_ignored" },
  { key = ".", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_name" },
  { key = "Y", action = "copy_path" },
  { key = "gy", action = "copy_absolute_path" },
  { key = "I", action = "toggle_file_info" },
  { key = "n", action = "tabnew" },
  { key = { "]" }, action = "cd" },
  { key = { "[" }, action = "dir_up" },
}


