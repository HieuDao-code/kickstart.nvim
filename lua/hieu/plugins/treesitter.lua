-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  -- Make sure a parser is at the latest compatible version
  build = ':TSUpdate',
  dependencies = {
    {
      'nvim-treesitter/nvim-treesitter-context',
    },
    {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = { 'python', 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = 'gnn', -- set to `false` to disable one of the mappings
        node_incremental = 'grn',
        scope_incremental = 'grc',
        node_decremental = 'grm',
      },
    },
    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['af'] = { query = '@function.outer', desc = 'Select outer part of a method/function definition' },
          ['if'] = { query = '@function.inner', desc = 'Select inner part of a method/function definition' },
          ['ac'] = { query = '@class.outer', desc = 'Select outer part of a class' },
          ['ic'] = { query = '@class.inner', desc = 'Select inner part of a class' },
          ['al'] = { query = '@loop.outer', desc = 'Select outer part of a loop' },
          ['il'] = { query = '@loop.inner', desc = 'Select inner part of a loop' },
        },
        include_surrounding_whitespace = true,
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>na'] = '@parameter.inner', -- swap parameters/argument with next
        ['<leader>nm'] = '@function.outer', -- swap function with next
      },
      swap_previous = {
        ['<leader>pa'] = '@parameter.inner', -- swap parameters/argument with prev
        ['<leader>pm'] = '@function.outer', -- swap function with previous
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = { query = '@function.outer', desc = 'Next method/function def start' },
        [']c'] = { query = '@class.outer', desc = 'Next class start' },
        [']l'] = { query = '@loop.outer', desc = 'Next loop start' },
      },
      goto_next_end = {
        [']M'] = { query = '@function.outer', desc = 'Next method/function def end' },
        [']C'] = { query = '@class.outer', desc = 'Next class end' },
        [']L'] = { query = '@loop.outer', desc = 'Next loop end' },
      },
      goto_previous_start = {
        ['[m'] = { query = '@function.outer', desc = 'Prev method/function def start' },
        ['[c'] = { query = '@class.outer', desc = 'Prev class start' },
        ['[l'] = { query = '@loop.outer', desc = 'Prev loop start' },
      },
      goto_previous_end = {
        ['[M'] = { query = '@function.outer', desc = 'Prev method/function def end' },
        ['[C'] = { query = '@class.outer', desc = 'Prev class end' },
        ['[L'] = { query = '@loop.outer', desc = 'Prev loop end' },
      },
    },
  },
}
