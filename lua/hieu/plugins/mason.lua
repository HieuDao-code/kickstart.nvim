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
        'ruff', -- Used to lint and format Python code
        'pyright', -- Static type checker for Python
        'prettier', -- Prettier is an opinionated code formatter for JSON, YAML, Markdown
        'taplo', -- Used to lint and format toml files
        'harper-ls', -- Grammar checker
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
}
