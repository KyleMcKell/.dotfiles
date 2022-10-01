local mason = require('mason')
local masonlsp = require('mason-lspconfig')
local masonnulls = require('mason-null-ls')

local servers = { 'sumneko_lua', 'tsserver', 'gopls', 'pyright', 'rust_analyzer', 'tailwindcss' }
local nulltools = { 'stylua', 'jq', 'eslint_d', 'prettierd' }

mason.setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})

masonlsp.setup({
  ensure_installed = servers,
})

masonnulls.setup({
  ensure_installed = nulltools,
})
