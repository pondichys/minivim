-- Personal Keymaps
local keymap = vim.keymap -- for conciseness

-- Move between buffers
keymap.set('n', '<S-h>', '<cmd>bprev<cr>', { desc = 'Move to previous buffer' })
keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Move to next buffer' })

-- Delete buffers using mini.buffremove
keymap.set('n', '<leader>bd', '<cmd> lua MiniBufremove.delete()<cr>', { desc = 'Delete buffer' })

-- Window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window
