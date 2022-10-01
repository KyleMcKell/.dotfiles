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
  use('numToStr/Comment.nvim')
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
  use('lewis6991/gitsigns.nvim')
  use('dinhhuy258/git.nvim')
  use({ 'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons' })
  use({ 'akinsho/toggleterm.nvim', tag = '*' })
  use({ 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' } })
  use({ 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }, tag = 'nightly' })
end)
