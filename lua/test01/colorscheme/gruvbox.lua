--
-- https://github.com/ellisonleao/gruvbox.nvim
--

return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000 ,

    enabled = false,

    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        transparent_mode = true,
      })
    end
  }
}


--
