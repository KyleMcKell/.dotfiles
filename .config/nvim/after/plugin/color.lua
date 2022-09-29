local status, catppuccin = pcall(require, 'catppuccin')

if not status then
  return
end

-- bringing in all palettes, commenting out ones that we currently aren't using
-- no need to pcall since we already check status earlier
local palletes = require('catppuccin.palettes')
local mocha = palletes.get_palette('mocha')
-- local macchiato = palletes.get_palette "macchiato"
-- local frappe = palletes.get_palette "frappe"
-- local latte = palletes.get_palette "latte"

vim.g.catppuccin_flavour = 'mocha' -- latte, frappe, macchiato, mocha

catppuccin.setup({
  transparent_background = true,
  term_colors = true,
  compile = {
    enabled = false,
    path = vim.fn.stdpath('cache') .. '/catppuccin',
  },
  dim_inactive = {
    enabled = false,
    shade = 'dark',
    percentage = 0.15,
  },
  styles = {
    comments = { 'italic' },
    conditionals = { 'italic' },
    loops = {},
    functions = {},
    keywords = { 'italic' },
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    -- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
  },
  color_overrides = {},
  highlight_overrides = {
    all = {
      LineNr = { fg = mocha.overlay0 }, -- make line numbers brighter
    },
  },
})

vim.cmd([[colorscheme catppuccin]])
