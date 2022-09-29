local nvim_lsp = require('lspconfig')
local nulls = require('null-ls')
local masonnulls = require('mason-null-ls')

local runtime_path = vim.split(package.path, ';')
-- local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = vim.api.nvim_create_augroup('Format', { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end,
    })
  end
end

nvim_lsp.tsserver.setup({
  on_attach = on_attach,
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' },
})

nvim_lsp.gopls.setup({
  on_attach = on_attach,
})

table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

nvim_lsp.sumneko_lua.setup({
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        runtime = runtime_path,
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

masonnulls.setup_handlers({
  function(source_name) end,
  stylua = function() nulls.register(nulls.builtins.formatting.stylua) end,
  jq = function() nulls.register(nulls.builtins.formatting.jq) end,
  eslint_d = function()
    nulls.register(nulls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})',
    }))
  end,
})

nulls.setup({
  on_attach = on_attach,
  sources = {
    nulls.builtins.formatting.prettierd.with({
      filetypes = {
        'css',
        'graphql',
        'html',
        'javascript',
        'javascriptreact',
        'json',
        'less',
        'markdown',
        'scss',
        'typescript',
        'typescriptreact',
        'yaml',
      },
    }),
  },
})
