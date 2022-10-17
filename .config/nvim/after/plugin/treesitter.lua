local treesitterInstall = require('nvim-treesitter.install')
local treesitterConfig = require('nvim-treesitter.configs')

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
    'tsx',
    'typescript',
    'css',
    'html',
    'javascript',
    'prisma',
    'go',
    'lua',
    'markdown',
    'rust',
    'vim',
    'yaml',
    'json',
    'toml',
    'fish',
    'svelte',
  },
  autotag = {
    enable = true,
  },
})

local parserConfig = require('nvim-treesitter.parsers').get_parser_configs()
parserConfig.tsx.filetype_to_parsername = { 'javascript', 'typescript.tsx' }
