
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- jkhl rolling offse-t
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4

-- line number and sign
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.signcolumn = "yes"

-- hl line
vim.wo.cursorline = false

-- rightside reference line
-- vim.wo.colorcolumn = "80"

-- indent
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- << >> behavior
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- space and tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.hlsearch = true
vim.o.wrapscan = false

vim.o.incsearch = true

-- command line size
vim.o.cmdheight = 1

-- auto load
vim.o.autoread = true
vim.bo.autoread = true

-- wrap
vim.wo.wrap = false
vim.o.whichwrap = "<,>,[,]"

-- buffer hidden
vim.o.hidden = true

-- mouse
vim.o.mouse = "a"

-- backup file 
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- timeout 
vim.o.timeoutlen = 500

-- split window
vim.o.splitbelow = true
vim.o.splitright = true

-- autocomplete
vim.g.completeopt = "menu,menuone,noselect,noinsert"

--theme
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.list = true
vim.o.listchars = "space:·,tab:>-"

-- wildmenu
vim.o.wildmenu = true
vim.o.pumheight = 8

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- tabline
vim.o.showtabline = 2

-- show mode
vim.o.showmode = false

-- clipboard
vim.opt.clipboard = "unnamedplus"

