
require("plugins")

require("basic")
require("keybinding")
require("theme")

require("plugin-config/bufferline")
require("plugin-config/comment")
require("plugin-config/gitsigns")
require("plugin-config/hop")
require("plugin-config/lualine")
require("plugin-config/luasnip")
require("plugin-config/neoformat")
require("plugin-config/nvim_cmp")
require("plugin-config/nvim_lint")
require("plugin-config/nvim_tree")
require("plugin-config/surround")
require("plugin-config/telescope")
require("plugin-config/toggleterm")
require("plugin-config/treesitter")
require("plugin-config/nvim_treesitter_context")
require("plugin-config/nvim_treesitter_textobj")

-- dont change following order
require("lsp/mason")
require("lsp/lsp_setup")

