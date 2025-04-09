-- Install all LSP, DAP, Linter and Formatter
return {
  { 'williamboman/mason.nvim', opts = {} },
  {
    -- Ensure the servers and tools above are installed
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      ensure_installed = {
        'stylua', -- Used to format Lua code
        'ruff', -- Used tm lint and format Python code
        'pyright', -- Static type checker for Python
        'prettier', -- Prettier is an opinionated code formatter
        'taplo',
      },
    },
  },

  -- Install language server
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      ensure_installed = { 'lua_ls', 'pyright', 'ruff', 'marksman', 'yamlls', 'taplo' },
    },
  },

  -- Installs the debug adapters for you
  {
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'debugpy', -- Python Debug Adapter Protocol
      },
    },
  },
}
