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

    -- TODO: 以下のキーバインドを別の場所に移動させる？
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    -- TODO: telescopeでtabを表示する→別のプラグインを導入

    keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>',     { desc = 'List buffers' })
    keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = 'Find string under cursor in cwd' })
    keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>',  { desc = 'Fuzzy find files in cwd' })
    keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>',    { desc = 'Fuzzy find recent files' })
    keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>',   { desc = 'Find string in cwd' })
    -- TODO: TODOタグのみ表示させることができるの？
    -- { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Todo (Trouble)" },
    -- { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<CR>", desc = "Todo/Fix/Fixme (Trouble)" },
    -- { "<leader>st", "<cmd>TodoTelescope<CR>", desc = "Todo" },
    -- { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<CR>", desc = "Todo/Fix/Fixme" },
    keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<CR>',         { desc = 'Find todos' })
    keymap.set('n', '<leader>fz', '<cmd>Telescope colorscheme<CR>', { desc = 'List colorscheme with preview' })
  end,
}


--
