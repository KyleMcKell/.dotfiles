local remap = require('kylemckell.keymap')

local nnoremap = remap.nnoremap
local tnoremap = remap.tnoremap
local vnoremap = remap.vnoremap

-- back to netrw
nnoremap('<leader>ex', '<cmd>Ex<CR>')

-- telescope fuzzy
nnoremap('<leader>ff', '<cmd>Telescope find_files<CR>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<CR>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<CR>')

-- Copy to clipboard
vnoremap('<leader>y', '"+y')
nnoremap('<leader>y', '"+y')
nnoremap('<leader>Y', '"+yg_')

-- Paste from clipboard
nnoremap('<leader>p', '"+p')
nnoremap('<leader>P', '"+P')
vnoremap('<leader>p', '"+p')
vnoremap('<leader>P', '"+P')

-- terminal remaps
nnoremap('<leader>cmd', '<cmd>vnew<CR><cmd>:terminal<CR>i') -- open terminal in vnew
tnoremap('<Esc>', '<C-\\><C-n>') -- remap Esc to go to normal mode in terminal
tnoremap('<leader><Esc>', '<C-\\><C-n><cmd>q<CR>') -- remap Esc to go to normal mode in terminal

-- lsp saga
nnoremap('<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>')
nnoremap('<leader>cd', '<cmd>Lspsaga show_cursor_diagnostics<CR>')
nnoremap('<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>')
nnoremap('<C-k>', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
nnoremap('K', '<cmd>Lspsaga hover_doc<CR>')
nnoremap('<leader>ca', '<cmd>Lspsaga code_action<CR>')
nnoremap('D', '<cmd>Lspsaga peek_definition<CR>')
nnoremap('<leader>rn', '<cmd>Lspsaga rename<CR>')

-- float terminal
nnoremap('<C-a>', '<cmd>Lspsaga open_floaterm<CR>')
tnoremap('<C-a>', '<cmd>Lspsaga close_floaterm<CR>')

-- get rid of highlight
nnoremap('<leader>noh', '<Esc>:noh<CR>')

-- git
nnoremap('<leader>gb', '<cmd>GitBlame<CR>')
