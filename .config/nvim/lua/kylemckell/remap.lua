local remap = require('kylemckell.keymap')

local nnoremap = remap.nnoremap
local tnoremap = remap.tnoremap
local vnoremap = remap.vnoremap
local inoremap = remap.inoremap

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
tnoremap('<Esc>', '<C-\\><C-n>') -- remap Esc to go to normal mode in terminal

-- lsp saga
nnoremap('<leader>ld', '<cmd>Lspsaga show_line_diagnostics<CR>')
nnoremap('<leader>cd', '<cmd>Lspsaga show_cursor_diagnostics<CR>')
nnoremap('<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>')
nnoremap('<C-k>', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
nnoremap('K', '<cmd>Lspsaga hover_doc<CR>')
nnoremap('<leader>ca', '<cmd>Lspsaga code_action<CR>')
nnoremap('D', '<cmd>Lspsaga peek_definition<CR>')
nnoremap('<leader>rn', '<cmd>Lspsaga rename<CR>')

-- get rid of highlight
nnoremap('<leader>hl', '<Esc>:noh<CR>')

-- git
nnoremap('<leader>gb', '<cmd>GitBlame<CR>')
nnoremap('<leader>gR', '<cmd>GitRevert<CR>')
nnoremap('<leader>gr', '<cmd>GitRevertFile<CR>')

-- new line enter, I remapped fn + enter to pagedown LOL, we gaming
nnoremap('<PageDown>', 'o')
inoremap('<PageDown>', '<Esc>o')
nnoremap('<PageUp>', 'O')
inoremap('<PageUp>', '<Esc>O')

-- nvim tree garbage
nnoremap('<leader>tt', '<cmd>NvimTreeToggle<CR>')
nnoremap('<leader>to', '<cmd>NvimTreeFocus<CR>')
nnoremap('<leader>tf', '<cmd>NvimTreeFindFile<CR>')
nnoremap('<leader>tc', '<cmd>NvimTreeCollapse<CR>')
nnoremap('<leader>tr', '<cmd>NvimTreeRefresh<CR>')
