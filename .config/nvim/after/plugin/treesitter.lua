local installStatus, treesitterInstall = pcall(require, 'nvim-treesitter.install')
local configsStatus, treesitterConfig = pcall(require, 'nvim-treesitter.configs')

if (not installStatus or not configsStatus) then return end 

treesitterInstall.update({ with_sync = true })

treesitterConfig.setup({
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "typescript",
    "css",
    "html",
    "javascript",
    "prisma",
    "go",
    "lua",
    "markdown",
    "rust",
    "vim",
    "yaml",
    "json",
    "toml"
  },
  autotag = {
    enable = true,
  },
})

