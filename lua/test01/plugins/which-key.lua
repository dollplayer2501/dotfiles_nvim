--
-- https://github.com/folke/which-key.nvim
--

return {
  'folke/which-key.nvim',
  event = {
    'VeryLazy',
  },

  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,

  opts = {
    -- preset = 'classic',
    -- preset = 'modern',
    preset = 'helix',

    win = {
      padding = { 2, 4 },
      title_pos = 'right',
    },
    layout = {
      width = {
        min = 40
      },
      spacing = 15,
    },
 
    spec = {
      { '<leader>e', group = ' [e]xplorer' },
      { '<leader>f', group = ' [f]ind' },
      { '<leader>s', group = ' [s]plit window' },
      { '<leader>t', group = ' [t]ab' },
      { '<leader>w', group = ' [w] session' },
      { '<leader>z', group = ' misc.' },
    },
    -- TODO: at push space key, display guide, now all "keymaps" only 
    -- key_labels = {
    --   ["<space>"] = "SPC",
    --   ["<cr>"] = "RET",
    --   ["<tab>"] = "TAB",
    -- },
  },
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show({ global = false })
      end,
      desc = 'Buffer local keymaps (which-key)',
    },
  },

  config = function(_, opts)
    require('which-key').setup(opts)
  end,
}


--
