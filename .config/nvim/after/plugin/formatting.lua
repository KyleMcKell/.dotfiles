local nulls = require("null-ls")
local prettier = require("prettier")

nulls.setup({
  sources = {
    nulls.builtins.formatting.stylua.with({
      quote_style = "ForceSingle",
    }),
    nulls.builtins.diagnostics.eslint.with({
      diagnostics_format = "[eslint] #{m}\n(#{c})",
    }),
  },
})

prettier.setup({
  bin = "prettierd",
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
  },
})
