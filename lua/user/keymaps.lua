local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<C-t>', ':tabnew .<CR>', opts)
keymap('n', '<C-Left>', 'gT', opts)
keymap('n', '<C-Right>', 'gt', opts)

-- prettier
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)

-- vim move
keymap('v', '<C-j>', '<Plug>MoveBlockDown', opts)
keymap('v', '<C-k>', '<Plug>MoveBlockUp', opts)
keymap('n', '<C-j>', '<Plug>MoveLineDown', opts)
keymap('n', '<C-k>', '<Plug>MoveLineUp', opts)

