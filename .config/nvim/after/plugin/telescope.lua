local telescope = require('telescope')

pcall(telescope.load_extention, 'fzf')

telescope.setup()
