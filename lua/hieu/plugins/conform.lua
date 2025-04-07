-- Autoformat
return {
  'stevearc/conform.nvim',
  dependencies = {
    -- Automatically formatters to stdpath for Neovim
    'williamboman/mason.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      python = {
        -- To fix auto-fixable lint errors.
        'ruff_fix',
        -- To run the Ruff formatter.
        'ruff_format',
        -- To organize the imports.
        'ruff_organize_imports',
      },
    },
  },
  config = function(_, opts)
    -- Ensure the servers and tools above are installed
    require('mason-tool-installer').setup {
      ensure_installed = {
        'stylua', -- Used to format Lua code
        'ruff', -- Used tm lint and format Python code
        'pyright', -- Static type checker for Python
      },
    }
  end,
}
