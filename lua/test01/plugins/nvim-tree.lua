--
-- https://github.com/nvim-tree/nvim-tree.lua
-- https://github.com/b0o/nvim-tree-preview.lua
-- https://github.com/nvim-tree/nvim-web-devicons
--

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    {
      'b0o/nvim-tree-preview.lua',
      dependencies = {
        'nvim-lua/plenary.nvim',
        -- TODO: 未設定
        '3rd/image.nvim',
      },
    }, {
      'nvim-tree/nvim-web-devicons'
    }
  },

  config = function()

    require('nvim-tree-preview').setup {

      min_width = 100,
      max_width = 200,

      min_height = 20,
      max_height = 100,

      wrap = false,
      border = 'rounded',
      zindex = 100,
      show_title = true,
      title_pos = 'top-left',
      title_format = ' %s ',      
      follow_links = true,
    }


    local nvimtree = require('nvim-tree')

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      sort = {
        sorter = 'case_sensitive',
      },
      renderer = {
        highlight_opened_files = 'all',
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '',
              arrow_open = '',
            },
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = {
          "^\\.DS_Store$",
          "^\\.git$",
          "^node_modules$",
          "^__pycache__$",
        },
      },
      git = {
        ignore = false,
      },

      on_attach = function(bufnr)
        local api = require('nvim-tree.api')

        api.config.mappings.default_on_attach(bufnr)

        local function opts(desc)
          return {
            desc = 'nvim-tree: ' .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true
          }
        end

        local preview = require('nvim-tree-preview')

        local keymap = vim.keymap
        vim.keymap.set('n', 'P',     preview.watch,   opts 'Preview (Watch)')
        vim.keymap.set('n', '<Esc>', preview.unwatch, opts 'Close Preview/Unwatch')
        vim.keymap.set('n', '<C-f>', function() return preview.scroll(4) end,  opts 'Scroll Down')
        vim.keymap.set('n', '<C-b>', function() return preview.scroll(-4) end, opts 'Scroll Up')

        vim.keymap.set('n', '<Tab>', function()
          local ok, node = pcall(api.tree.get_node_under_cursor)
          if ok and node then
            if node.type == 'directory' then
              api.node.open.edit()
            else
              preview.node(node, {
                toggle_focus = true
              })
            end
          end
        end, opts 'Preview')
      end,
    })


    -- local keymap = vim.keymap
    -- keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>',         { desc = 'Toggle file explorer' })
    -- keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
    -- keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>',       { desc = 'Collapse file explorer' })
    -- keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>',        { desc = 'Refresh file explorer' })
  end
}


--
-- "<cmd>" is ":", colon
--
