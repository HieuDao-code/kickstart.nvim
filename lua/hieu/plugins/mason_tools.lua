-- Ensure the servers and tools above are installed
return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = { 'williamboman/mason.nvim' },
  opts = {
    ensure_installed = {
      'stylua', -- Used to format Lua code
      'ruff', -- Used tm lint and format Python code
      'pyright', -- Static type checker for Python
    },
  },
}
