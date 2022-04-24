local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- standart
keymap('n', '<C-t>', ':tabnew .<CR>', opts)

-- navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- navigation buffer
keymap('n', '<S-h>', ':bprevious<CR>', opts)
keymap('n', '<S-l>', ':bnext<CR>', opts)

-- nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- prettier
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)

