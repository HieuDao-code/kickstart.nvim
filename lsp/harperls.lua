return {
  cmd = { 'harper-ls', '--stdio' },
  filetypes = {
    'c',
    'cpp',
    'cs',
    'gitcommit',
    'go',
    'html',
    'javascript',
    'lua',
    'markdown',
    'python',
    'rust',
    'toml',
    'typescript',
    'cmake',
  },
  settings = {
    harper_ls = {
      linters = {
        SentenceCapitalization = false,
        SpellCheck = false,
      },
    },
  },
}
