
-- ----------------------------------------------------
-- General Config
-- ----------------------------------------------------
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opt = {
  noremap = true,
  silent = true,
}

-- local var
local map = vim.api.nvim_set_keymap

-- modified H and L
map("v", "L", "g_", opt)
map("n", "L", "g_", opt)
map("v", "H", "^", opt)
map("n", "H", "^", opt)

-- command line
map("c", "<C-j>", "<C-n>", { noremap = false })
map("c", "<C-k>", "<C-p>", { noremap = false })

-- quick save
map("n", "<leader>qq", ":bdelete!<CR>", opt)
map("n", "<leader>qa", ":qa!<CR>", opt)
map("n", "<leader>ww", ":wa<CR>", opt)

-- buffer jump
-- more see bufferine
map("n", "<F1>", ":wa<CR>:b#<CR>", opt)
map("n", "<F2>", ":wa<CR>:bp<CR>", opt)
map("n", "<F3>", ":wa<CR>:bn<CR>", opt)
map("n", "<F4>", ":wa<CR>", opt)

map("i", "<F1>", "<ESC><F1>", {})
map("i", "<F2>", "<ESC><F2>", {})
map("i", "<F3>", "<ESC><F2>", {})
map("i", "<F4>", "<ESC><F2>", {})

map("v", "<F1>", "<ESC><F1>", {})
map("v", "<F2>", "<ESC><F2>", {})
map("v", "<F3>", "<ESC><F2>", {})
map("v", "<F4>", "<ESC><F2>", {})

-- F8 Lspsaga outline
-- F9 nvim tree

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- For better Op
map("n", "J", "", {})
map("v", "J", "", {})
map("n", "Z", "ZZ", {})

-- ----------------------------------------------------
-- Windows split
-- ----------------------------------------------------

map("n", "<leader>sv", ":vsp<CR>", opt)
map("n", "<leader>sh", ":sp<CR>", opt)

-- close current win
map("n", "<leader>sc", "<C-w>c", opt)
-- close all other win
map("n", "<leader>so", "<C-w>o", opt) -- close others

-- move
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- size control
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<leader>s=", "<C-w>=", opt)

-- ----------------------------------------------------
-- LSP
-- ----------------------------------------------------
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', 'g]', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

    -- vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<leader>wl', function()
      -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

    -- vim.keymap.set('n', '<leader>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)
    -- vim.keymap.set('v', '<leader>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)

  end,
})


-- ----------------------------------------------------
-- Lspsaga
-- ----------------------------------------------------
vim.keymap.set("n", "g[", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
vim.keymap.set("n", "g]", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "gd", "<cmd>Lspsaga finder def<CR>")
vim.keymap.set("n", "gr", "<cmd>Lspsaga finder ref<CR>")
vim.keymap.set("n", 'K', '<cmd>Lspsaga hover_doc<CR>')

vim.keymap.set('n', '<F8>', '<cmd>Lspsaga outline<CR>')
vim.keymap.set('v', '<F8>', '<cmd>Lspsaga outline<CR>')
vim.keymap.set('i', '<F8>', '<cmd>Lspsaga outline<CR>')


-- ----------------------------------------------------
-- NeoFormat
-- ----------------------------------------------------
map("v", "<leader>f", "<cmd>Neoformat<CR>", { silent = true })
map("n", "<leader>f", "<cmd>Neoformat<CR>", { silent = true })


-- ----------------------------------------------------
-- telescope
-- ----------------------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- ----------------------------------------------------
-- nvimtree
-- ----------------------------------------------------
map("n", "<F9>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

-- ----------------------------------------------------
-- hop
-- ----------------------------------------------------
local hop = require('hop')
local directions = require('hop.hint').HintDirection

-- vim.keymap.set('', 'f', 
--     function()
--         hop.hint_char1({ 
--             direction = directions.AFTER_CURSOR,
--             current_line_only = true 
--         })
--     end, 
--     {remap=true}
--     )
--
-- vim.keymap.set('', 'F', 
--     function()
--         hop.hint_char1({ 
--             direction = directions.BEFORE_CURSOR,
--             current_line_only = true 
--         })
--     end, 
--     {remap=true}
--     )

vim.keymap.set('', 't', 
    function()
        hop.hint_char1({ 
            current_line_only = false
        })
    end, 
    {remap=true}
    )

vim.keymap.set('', 'gl', 
    function()
        hop.hint_lines({ 
            current_line_only = false
        })
    end, 
    {remap=true}
    )
vim.keymap.set('', 'gw', 
    function()
        hop.hint_words({ 
            current_line_only = false
        })
    end, 
    {remap=true}
    )

-- ----------------------------------------------------
-- tmp
-- ----------------------------------------------------


