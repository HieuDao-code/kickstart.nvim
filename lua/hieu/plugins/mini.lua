-- Collection of various small independent plugins/modules
return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    require('mini.ai').setup {
      mappings = {
        -- Disable some default mappings
        around_next = '',
        inside_next = '',
        around_last = '',
        inside_last = '',
      },
      n_lines = 500,
    }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup {
      mappings = {
        add = 'ys',
        delete = 'ds',
        find = '',
        find_left = '',
        highlight = '',
        replace = 'cs',
        update_n_lines = '',

        -- Add this only if you don't want to use extended mappings
        suffix_last = 'l',
        suffix_next = 'n',
      },
      search_method = 'cover_or_next',
    }

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    --Move any selection in any direction
    require('mini.move').setup()

    -- Mini icons
    require('mini.icons').setup()
  end,
}
