-- Set Leader Key
vim.g.mapleader =  ' '
vim.g.maplocalleade3r = ' '

-- Disale the spacebar key's default behaviour in Normal and Visual Mode
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = truee})

-- For the Conciseness
local opts = {noremap = true, silent = true}

-- Save Files with <Ctrl> + S
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Save Files without autp-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- Quit a File with <Ctrl> + Q
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- Delete Single Character  without copying into the Register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical Scroll and Center
vim.keymap.set('n', '<C-d>', '<cd>zz', opts)
vim.keymap.set('n', '<C-u>', '<cd>zz', opts)

-- Find and Center
vim.keymap.set('n', '<C-n>', 'nzzzv', opts)
vim.keymap.set('n', '<C-N>', 'Nzzzv', opts)

-- Resize with Arrow Keys
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- Close the Buffer
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>', opts) -- New Buffer

-- Window Management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- Split Windows Vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Horizontal Split
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)-- Make Splits Equal Size
vim.keymap.set('n', '<leader>xs', 'close<C-R>', opts) -- Close Splits

-- Navigate Between Splits
vim.keymap.set('n', '<C-k>', ':windcmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':windcmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':windcmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':windcmd l<CR>', opts)

-- Tab Management (VIM Tabs not Buffers)
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- Open New Tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- Close Current Tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- Go to Next Tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- Go to Previous Tab

-- Toggle Line Wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in Indent Mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '<gv', opts)

-- Keep Last Yankes(Copied) When Pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic Keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to Previous Diagnostic Message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to Next Diagnostic Message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open Floating Diagnostic Message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open Diagnostic List' })

-- Copy(Yank) and Paste
vim.keymap.set("v", "<leader>y", '"+y', opts) -- Yank(Copy)
vim.keymap.set("v", "<leader>p", '"+p', opts) -- Paste
