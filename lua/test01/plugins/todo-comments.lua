--
-- https://github.com/folke/todo-comments.nvim
--

-- TODO: change color, background and foreground color

return {
  'folke/todo-comments.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    local todo_comments = require("todo-comments")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })

    todo_comments.setup({
      keywords = {
        FIX  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }},
        MEMO = { icon = " ", color = "hint" },
        TODO = { icon = " ", color = "hint" },
        DONE = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" }},
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" }},
        NOTE = { icon = " ", color = "hint", alt = { "INFO" }},
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" }},
      },
      colors = {
        -- MEMO: This does not work ?
        error =   { "DiagnosticError", "ErrorMsg",   "#DC2626" },
        warning = { "DiagnosticWarn",  "WarningMsg", "#FBBF24" },
        info =    { "DiagnosticInfo",                "#ffffff" },
        hint =    { "DiagnosticHint",                "#3d59a1" },
        -- hint =    { "DiagnosticHint",                "#10B981" },
        default = { "Identifier",                    "#7C3AED" },
        test =    { "Identifier",                    "#FF00FF" },
      },
    })
  end,
}

