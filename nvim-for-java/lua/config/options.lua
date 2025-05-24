-- Left Column and Similiar Setings
vim.opt.number = true -- display line numbers
vim.opt.numberwidth = 2 -- set width of line mumber column
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.wrap = false -- display lines as single line
vim.opt.scrolloff = 10 -- number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- number of columns to keep to the left/right of cursor

-- Tab Spacing/Behaviour
-- vim.opt,expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
vim.opt.tabstop = 4 -- number of spaces inserted for tab character
vim.opt.softtabstop = 4 -- number of spaces inserted for <tab> key
vim.opt.smartindent = true --enable smart indentation
vim.opt.breakindent = true -- enable line breking indentation

-- General Behaviours
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.backup = false -- disable backup file creation
vim.opt.clipboard = "unnamedplus" -- enable system clipboard access
vim.opt.conceallevel = 0 -- show concealed characters in markdown files
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.mouse = "a" -- enable mouse support
vim.opt.showmode = false -- hide mode  display
vim.opt.splitbelow = true -- force horizontal splits below current window
vim.opt.splitright = true -- force vertical splits right of current window
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.timeoutlen = 1500 --set timeout for mapped sequences
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- set faster completion
vim.opt.writebackup = fase -- prevent editing of files being edited elsewhere
vim.opt.cursorline = true -- highlight current line

-- Searching Behaviours
vim.opt.hlsearch = true -- highlight all matches in search
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- match case if explicitely stated
