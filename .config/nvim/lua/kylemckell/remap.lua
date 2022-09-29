local remap = require("kylemckell.keymap");

local nnoremap = remap.nnoremap;
local bnoremap = remap.bnoremap;
local tnoremap = remap.tnoremap;

nnoremap("<leader>ex", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

-- nnoremap with {buffer = 0}
bnoremap("K", vim.lsp.buf.hover) -- hover event, typically for more info

-- terminal remaps
tnoremap("<Esc>", "<C-\\><C-n>") -- remap Esc to go to normal mode in terminal

