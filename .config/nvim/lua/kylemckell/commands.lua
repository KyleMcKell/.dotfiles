vim.cmd([[set winbar=%f]]) -- adds winbar at top
vim.cmd([[set signcolumn=yes:1]]) -- keeps column on left for symbols
vim.cmd([[set clipboard+=unnamedplus]]) -- accesses system clipboard for windows
vim.cmd([[set ls=0]]) -- last status
vim.cmd([[set ch=0]]) -- command height
vim.g.loaded = 1 -- sets loaded for netrw stuff
vim.g.loaded_netrwPlugin = 1 -- no netrw
vim.opt.termguicolors = true -- option to make colors better
