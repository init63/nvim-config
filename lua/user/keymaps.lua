local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- global
keymap('n', '<A-w>', ':w<CR>', opts)

-- buffer
keymap('n', '<A-q>', ':bdelete<CR>', opts)
keymap('n', '<A-l>', ':bnext<CR>', opts)
keymap('n', '<A-h>', ':bprevious<CR>', opts)

-- standart
keymap('n', '<C-t>', ':tabnew .<CR>', opts)
keymap('n', '<C-h>', 'gT', opts)
keymap('n', '<C-l>', 'gt', opts)


-- nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- prettier
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)

-- vim move
keymap('v', '<C-j>', '<Plug>MoveBlockDown', opts)
keymap('v', '<C-k>', '<Plug>MoveBlockUp', opts)
keymap('n', '<C-j>', '<Plug>MoveLineDown', opts)
keymap('n', '<C-k>', '<Plug>MoveLineUp', opts)

