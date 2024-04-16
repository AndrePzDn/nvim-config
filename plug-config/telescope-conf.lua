-- Load extension actions for file_browser
local fb_actions = require 'telescope'.extensions.file_browser.actions
local t_actions = require('telescope.actions')

require('telescope').setup{
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
--         sorting_strategy = 'descending',
        sorting_strategy = 'ascending',
        preview = {
          'treesitter'
        },
        mappings = {
          n = {
            ['o'] = t_actions.select_default,
            ['<C-c>'] = t_actions.close,
          }
        },
    },
    extensions = {
      file_browser = {
        hijack_netrw = true,
        mappings = {
          ['n'] = {
            ['a'] = fb_actions.create,
            ['<C-b>'] = t_actions.close,
            ['<C-z>'] = fb_actions.goto_parent_dir,
            ['<S-i>'] = fb_actions.toggle_hidden,
            ['<S-c>'] = fb_actions.change_cwd,
          }
        }
      }
    }
}

require('telescope.themes')
require('telescope').load_extension 'media_files'
require('telescope').load_extension 'file_browser'
