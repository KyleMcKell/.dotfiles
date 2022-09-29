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
nnoremap('<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true })
nnoremap('<leader>cd', '<cmd>Lspsaga show_cursor_diagnostics<CR>', { silent = true })
nnoremap('<C-]>', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
nnoremap('<C-[>', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })
nnoremap('K', '<cmd>Lspsaga hover_doc<CR>')
nnoremap('D', '<cmd>Lspsaga peek_definition<CR>')
nnoremap('<leader>rn', '<cmd>Lspsaga rename<CR>', { silent = true })

-- float terminal
nnoremap('<C-a>', '<cmd>Lspsaga open_floaterm<CR>', { silent = true })
tnoremap('<C-a>', '<cmd>Lspsaga close_floaterm<CR>', { silent = true })
