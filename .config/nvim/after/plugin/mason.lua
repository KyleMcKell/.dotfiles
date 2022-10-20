local mason = require('mason')
local masonlsp = require('mason-lspconfig')
local masonnulls = require('mason-null-ls')

local servers = { 'astro', 'gopls', 'pyright', 'rust_analyzer', 'sumneko_lua', 'svelte', 'tailwindcss', 'tsserver' }
local nulltools = { 'eslint_d', 'jq', 'prettierd', 'stylua' }

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
