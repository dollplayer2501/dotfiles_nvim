--
-- https://github.com/rmagatti/auto-session
--

-- MEMO: セッション保存関連、使い方がよく分からない

return {
  'rmagatti/auto-session',
  lazy = false,

  config = function()
    local auto_session = require('auto-session')

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/', '~/Dev/', '~/Downloads', '~/Documents', '~/Desktop/' },
    })
  end,
}


--
