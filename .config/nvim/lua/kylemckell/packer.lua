local status, packer = pcall(require, 'packer')

if not status then
  print('Packer is not installed!')
  return
end

vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
  use('wbthomason/packer.nvim')
  use('neovim/nvim-lspconfig')
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('jose-elias-alvarez/null-ls.nvim')
  use({ 'nvim-lualine/lualine.nvim', requires = { { 'kyazdani42/nvim-web-devicons', opt = true } } })
  use({ 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } })
  use({ 'catppuccin/nvim', as = 'catppuccin' })
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('jayp0521/mason-null-ls.nvim')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-nvim-lsp')
  use('L3MON4D3/LuaSnip')
  use('onsails/lspkind-nvim')
  use('windwp/nvim-ts-autotag')
  use('windwp/nvim-autopairs')
  use('glepnir/lspsaga.nvim')

  -- Config here stuff
  use({
    'kyazdani42/nvim-tree.lua',
    config = function() require('nvim-tree').setup() end,
    tag = 'nightly',
    requires = { 'kyazdani42/nvim-web-devicons' },
  })

  use({
    'akinsho/toggleterm.nvim',
    config = function() require('toggleterm').setup({ open_mapping = [[<c-a>]] }) end,
    tag = '*',
  })

  -- Lazy Loaded stuff
  use({
    'akinsho/bufferline.nvim',
    event = 'BufRead',
    config = function() require('bufferline').setup({ options = { diagnostics = 'nvim_lsp' } }) end,
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons',
  })

  use({
    'numToStr/Comment.nvim',
    event = 'BufRead',
    config = function() require('Comment').setup() end,
  })

  use({
    'dinhhuy258/git.nvim',
    event = 'BufRead',
    config = function() require('git').setup() end,
  })

  use({
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function() require('gitsigns').setup() end,
  })

  use({
    'iamcco/markdown-preview.nvim',
    event = 'BufRead',
    setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    run = 'cd app && npm install',
    ft = { 'markdown' },
  })
end)
