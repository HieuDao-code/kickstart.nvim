-- Install language server
return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    ensure_installed = { 'lua_ls', 'pyright', 'ruff' },
  },
}
