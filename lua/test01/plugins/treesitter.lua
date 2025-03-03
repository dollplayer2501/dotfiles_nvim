--
-- https://github.com/nvim-treesitter/nvim-treesitter
--

return {
  'nvim-treesitter/nvim-treesitter',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  build = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },

  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({

      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        --
        'csv',
        'ini',
        'json',
        'toml',
        'xml',
        'yaml',
        --
        'bash',
        'fish',
        --
        'javascript',
        'lua',
        'python',
        'ruby',
        --
        'markdown',
        'markdown_inline',
        --
        'desktop',
        'dockerfile',
        'gitignore',
        'ssh_config',
        'vim',
        'vimdoc',
        --
        'css',
        'html',
        'pug',
        -- 'nunjucks',
        'twig',
        'scss',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    })
  end,
}


--
