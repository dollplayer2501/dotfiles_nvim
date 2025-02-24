--
-- https://github.com/rmagatti/auto-session
--

return {
  'rmagatti/auto-session',
  lazy = false,

  config = function()
    local auto_session = require('auto-session')

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/', '~/Dev/', '~/Downloads', '~/Documents', '~/Desktop/' },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>",    { desc = "Save session for auto session root dir" })
    keymap.set("n", "<leader>wl", "<cmd>SessionSearch<CR>",  { desc = "List session" })
  end,
}


