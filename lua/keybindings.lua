vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-Left>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-Right>", ":BufferLineCycleNext<CR>", opt)
