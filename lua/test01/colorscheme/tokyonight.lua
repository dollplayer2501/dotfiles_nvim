--
-- https://github.com/folke/tokyonight.nvim
--

-- https://lospec.com/palette-list/tokyo-night
-- #1f2335 #24283b #292e42 #3b4261 #414868
-- #545c7e #565f89 #737aa2 #a9b1d6 #c0caf5
-- #394b70 #3d59a1 #7aa2f7 #7dcfff #b4f9f8
-- #bb9af7 #9d7cd8 #ff9e64 #ffc777 #c3e88d
-- #4fd6be #41a6b5 #ff757f #c53b53 #ff007c

return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,

    config = function()
      -- local bg           = '#011628'
      -- local bg_dark      = '#011423'
      local bg_dark         = '#08052b' -- transparent
      -- local bg_highlight = '#143652'
      -- local bg_search    = '#0A64AC'
      -- local bg_visual    = '#275378'
      -- local fg           = '#CBE0F0'
      -- local fg_dark      = '#B4D0E9'
      -- local fg_gutter    = '#627E97'
      local border       = '#547998'

      require('tokyonight').setup({
        -- style = 'night',

        transparent = true,
        -- transparent = vim.g.transparent_enabled, -- if transparent.nvim using

        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
          comments = { italic = false },
          keywords = { italic = true },
        },

        -- terminal_colors = true,

        on_colors = function(colors)
          -- colors.bg            = bg
          -- colors.bg_dark       = bg_dark
          -- colors.bg_float      = bg_dark
          -- colors.bg_highlight  = bg_highlight
          -- colors.bg_popup      = bg_dark
          -- colors.bg_search     = bg_search
          -- colors.bg_sidebar    = bg_dark
          colors.bg_statusline = bg_dark
          -- colors.bg_visual     = bg_visual
          colors.border        = border
          -- colors.fg            = fg
          -- colors.fg_dark       = fg_dark
          -- colors.fg_float      = fg
          -- colors.fg_gutter     = fg_gutter
          -- colors.fg_sidebar    = fg_dark
        end,
      })

      -- vim.cmd('colorscheme tokyonight')
    end,
  },
}


--
