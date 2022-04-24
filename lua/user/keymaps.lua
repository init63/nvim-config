local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- standart
keymap('n', '<C-t>', ':tabnew .<CR>', opts)
keymap('n', '<S-q>', ':bdelete<CR>', opts)

-- navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- navigation buffer
keymap('n', '<S-h>', ':bprevious<CR>', opts)
keymap('n', '<S-l>', ':bnext<CR>', opts)

-- move
keymap('n', '<A-j>', ":MoveLine(1)<CR>", opts)
keymap('n', '<A-k>', ":MoveLine(-1)<CR>", opts)
keymap('v', '<A-j>', ":MoveBlock(1)<CR>", opts)
keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", opts)
keymap('n', '<A-l>', ":MoveHChar(1)<CR>", opts)
keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", opts)
keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", opts)
keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", opts)

-- nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- prettier
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)

