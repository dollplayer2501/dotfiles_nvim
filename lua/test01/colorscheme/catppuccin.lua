--
-- https://github.com/catppuccin/nvim
--

return {
  {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',

    enabled = false,

    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })
    end,
  }
}


--
