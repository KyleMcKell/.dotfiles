local gitSignsStatus, gitsigns = pcall(require, 'gitsigns')
if not gitSignsStatus then return end
gitsigns.setup({})

local gitStatus, git = pcall(require, 'git')
if not gitStatus then return end
git.setup({})
