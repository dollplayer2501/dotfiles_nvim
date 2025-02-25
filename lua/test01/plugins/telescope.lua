--
-- https://github.com/nvim-telescope/telescope.nvim
--

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',

  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    'nvim-tree/nvim-web-devicons',
    'folke/todo-comments.nvim',
  },

  -- TODO: telescopeでtabを表示する→別のプラグインを導入？
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        -- MEMO: プレビュースクロール行数を変更したい（できていない
        -- preview = {
        --   scroll_speed = 1,
        -- },
        layout_config = {
          --   preview = {
          --   scroll_speed = 1,
          -- },
          width = 0.9,
        },
        path_display = {
          'smart',
        },
        mappings = {
          i = {
            -- for insert mode
            ['<C-k>'] = actions.move_selection_previous,      -- move to prev result
            ['<C-j>'] = actions.move_selection_next,          -- move to next result
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
    })

    telescope.load_extension('fzf')
  end,
}


--
