require('telescope').setup{
--     sorting_strategy = 'ascending',
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
        },
        multi_icon = '+ ',
        sorting_strategy = 'descending',
        preview = {
          'treesitter'
        }
    },
    extensions = {

    }
}

local themes = require('telescope.themes')
require('telescope').load_extension('media_files')
