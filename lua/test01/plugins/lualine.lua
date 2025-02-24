--
-- https://github.com/nvim-lualine/lualine.nvim
--

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },

  config = function()
 
    -- to configure lazy pending updates count
    local lazy_status = require('lazy.status')

    require('lualine').setup {
      --
      options = {
        theme = 'auto',
        component_separators = { -- nf-ple-forwardslash_separator_redundant
          left  = '',
          right = ''
        },
        section_separators = {
          left  = '', -- nf-ple-upper_left_triangle
          right = ''  -- nf-ple-lower_right_triangle
        },
        -- disabled_filetypes = {'NvimTree', 'packer'},
        colored = false,
      },
      --
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        -- lualine_c = {'filename'},
        lualine_c = {
          -- Display filename
          {'filename', path = 1},
          -- Display buffer number
          function() return 'Buf:' .. vim.fn.bufnr('%') end
        },
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = '#FF4A4A' },
          },
          { 'encoding' },
          { 'fileformat' },
          { 'filetype' },
        },
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
      --
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
      },
      --
      tabline = {
        lualine_a = {'buffers'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
      },
      -- MEMO: 上、タブ行の真下を1行常に占有
      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      -- MEMO: よく分からない
      extensions = {
        'lazy',
        'nvim-tree',
        'toggleterm',
      },
    }
  end,
}


--
