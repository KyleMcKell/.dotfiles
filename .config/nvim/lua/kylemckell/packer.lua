local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('`git clone https://github.com/wbtomason/packer.nvim' .. install_path)
  vim.cmd([[packadd packer.nvim]])
end

local packer = require('packer')

packer.startup(function(use)
  -- packer, lmao
  use('wbthomason/packer.nvim')

  -- just packages
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-nvim-lsp')
  use('onsails/lspkind-nvim')
  use('glepnir/lspsaga.nvim')
  use('L3MON4D3/LuaSnip')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('jayp0521/mason-null-ls.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  use('hrsh7th/nvim-cmp')
  use('neovim/nvim-lspconfig')

  -- color theme
  use({ 'catppuccin/nvim', as = 'catppuccin' })

  -- things that do more than just use
  use({
    'nvim-lualine/lualine.nvim',
    requires = { { 'kyazdani42/nvim-web-devicons', opt = true } },
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  })

  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    tag = '0.1.0',
  })

  -- Config here stuff
  use({
    'kyazdani42/nvim-tree.lua',
    config = function() require('nvim-tree').setup() end,
    requires = { 'kyazdani42/nvim-web-devicons' },
    tag = 'nightly',
  })

  use({
    'akinsho/toggleterm.nvim',
    config = function() require('toggleterm').setup({ open_mapping = [[<c-a>]] }) end,
    tag = '*',
  })

  -- Lazy Loaded stuff
  use({
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup({ disable_filetype = { 'TelescopePrompt', 'vim' } }) end,
    event = 'BufRead',
  })

  use({
    'windwp/nvim-ts-autotag',
    config = function() require('nvim-ts-autotag').setup() end,
    event = 'BufRead',
  })

  use({
    'akinsho/bufferline.nvim',
    config = function() require('bufferline').setup({ options = { diagnostics = 'nvim_lsp' } }) end,
    event = 'BufRead',
    requires = 'kyazdani42/nvim-web-devicons',
    tag = 'v2.*',
  })

  use({
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end,
    event = 'BufRead',
  })

  use({
    'dinhhuy258/git.nvim',
    config = function() require('git').setup() end,
    event = 'BufRead',
  })

  use({
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end,
    event = 'BufRead',
  })

  use({
    'iamcco/markdown-preview.nvim',
    event = 'BufRead',
    ft = { 'markdown' },
    run = 'cd app && npm install',
    setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
  })

  if is_bootstrap then require('packer').sync() end
end)

if is_bootstrap then
  print('==================================')
  print('    Plugins are being installed')
  print('    Wait until Packer completes,')
  print('        then restart nvim')
  print('==================================')
  return
end

local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = '<cmd>so | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand('packer.lua'),
})
