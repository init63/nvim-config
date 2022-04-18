local o = vim.o
local wo = vim.wo
local cmd = vim.cmd

-- Global Options
o.mouse = 'a'
o.encoding = 'UTF-8'
o.swapfile = false
o.wrap = false
o.scrolloff = 7
o.sidescrolloff = 7
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.fileformat = 'unix'
o.showmode = false

-- Local Optiona
wo.colorcolumn = '79'
wo.number = true
wo.cursorline = true

cmd('filetype indent on')
