local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed!")
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'nvim-lualine/lualine.nvim', requires = { { 'kyazdani42/nvim-web-devicons', opt = true } } }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
  use 'aserowy/tmux.nvim'
  use 'neovim/nvim-lspconfig'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'numToStr/Comment.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"
end)
