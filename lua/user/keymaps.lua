local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- prettier
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)
