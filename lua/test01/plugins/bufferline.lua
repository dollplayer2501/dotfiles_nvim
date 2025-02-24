--
-- https://github.com/akinsho/bufferline.nvim
--

return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  opts = {
    options = {
      mode = 'tabs',
      separator_style = 'slant',
    },
  },

  -- MEMO: サイドバーに「File Explorer」を固定で表示したいができない
  -- config = function(_, opts)
  --   require('bufferline').setup({
  --     options = {
  --       offsets = {
  --         {
  --           filetype = "NvimTree",
  --           text = "File Explorer",
  --           text = function()
  --             return vim.fn.getcwd()
  --           end,
  --           text_align = "left",
  --           highlight = "Directory",
  --           separator = true,
  --         },
  --       },
  --     },
  --   })
  -- end,
}


--
