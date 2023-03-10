vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = false }

map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-Left>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-Right>", ":BufferLineCycleNext<CR>", opt)

-- LSP
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
map('v', '<C-b>', "<Esc><cmd>'<,'>CommentToggle<CR>", opt)
map('n', '<C-b>', "<Esc><cmd>'<,'>CommentToggle<CR>", opt)


-- 插件快捷键
local pluginKeys = {}

-- CMP
-- nvim-cmp 自动补全
-- pluginKeys.cmp = function(cmp)
--   return {
--     -- 上一个
--     ['C-<Up>'] = cmp.mapping.select_prev_item(),
--     -- 下一个
--     ['<C-Down>'] = cmp.mapping.select_next_item(),
--     -- 出现补全
--     ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
--     -- 取消
--     ['<A-,>'] = cmp.mapping({
--       i = cmp.mapping.abort(),
--       c = cmp.mapping.close(),
--     }),
--     -- 确认
--     -- Accept currently selected item. If none selected, `select` first item.
--     -- Set `select` to `false` to only confirm explicitly selected items.
--     ['<CR>'] = cmp.mapping.confirm({
--       select = true ,
--       behavior = cmp.ConfirmBehavior.Replace
--     }),
--     -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
--     ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
--     ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
--   }
-- end

-- pluginKeys.term = function(term)
--   return {
--    
--   }
-- end

-- map('n', '<C-t>', ':ToggleTerm<CR>', opt)

return pluginKeys
