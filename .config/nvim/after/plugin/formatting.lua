local nulls = require('null-ls')
local masonnulls = require('mason-null-ls')

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
