local mason = require('mason')
local masonlsp = require('mason-lspconfig')
local masontool = require('mason-tool-installer')

local servers = { 'sumneko_lua', 'tsserver', 'gopls', 'pyright', 'rust_analyzer', 'tailwindcss', 'stylua' }
local tools = { 'stylua' }

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

masontool.setup({
  ensure_installed = tools,
})
