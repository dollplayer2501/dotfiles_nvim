--
-- https://github.com/sainnhe/everforest
--

return {
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,

    enabled = false,

    config = function()
      vim.g.everforest_enable_italic = true
      vim.g.everforest_disable_italic_comment = true
      vim.g.everforest_transparent_background = 2
      vim.g.everforest_cursor = 'green'
      vim.g.everforest_dim_inactive_windows = 1
    end
  }
}


--
