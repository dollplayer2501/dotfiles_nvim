--
--
--

--
-- MEMO: leader keyの設定
-- 例: `<leader>nh` は、 [space] -> [n] -> [h]
--
vim.g.mapleader = ' '

--[[
local wk = require("which-key")

local mappings = {
    ["<leader>f"] = { "<cmd>Telescope find_files<cr>", "Find Files" },
--    ["<leader>g"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
}

wk.register(mappings, { prefix = "<leader>" })
]]

local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with `jk`' })


-- increment/decrement numbers, normal mode
-- keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
-- keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })


-- window management, normal mode
keymap.set('n', '<leader>sv', '<C-w>v',         { desc = 'Split window vertically' })
keymap.set('n', '<leader>sh', '<C-w>s',         { desc = 'Split window horizontally' })
keymap.set('n', '<leader>se', '<C-w>=',         { desc = 'Make splits equal size' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })
keymap.set('n', '<leader>sm', '<cmd>MaximizerToggle<CR>', { desc = 'Maximize/minimize a split' }) -- szw/vim-maximizer


-- tab
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>',   { desc = 'Open new tab' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>',     { desc = 'Go to next tab' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>',     { desc = 'Go to previous tab' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })


-- session
keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' })
keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>',    { desc = 'Save session for auto session root dir' })
keymap.set('n', '<leader>wl', '<cmd>SessionSearch<CR>',  { desc = 'List session' })


-- clear search highlights, normal mode
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })


-- file explode
keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>',         { desc = 'Toggle file explorer' })
keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>',       { desc = 'Collapse file explorer' })
keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>',        { desc = 'Refresh file explorer' })


-- etc.
keymap.set('n', '<leader>zh', '<cmd>HighlightColors Toggle<CR>', { desc = 'Toggle Highlight Color, #rrggbb' })
keymap.set('n', '<leader>zl', '<cmd>Lazy<CR>',                   { desc = 'Toggle Lazy' })
keymap.set('n', '<leader>zm', '<cmd>message<CR>',                { desc = 'Display (error) message' })




keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>',     { desc = 'List buffers' })
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = 'Find string under cursor in cwd' })
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>',  { desc = 'Fuzzy find files in cwd' })
keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>',    { desc = 'Fuzzy find recent files' })
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>',   { desc = 'Find string in cwd' })
-- TODO: TODOタグのみ表示させることができるの？
-- { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Todo (Trouble)" },
-- { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<CR>", desc = "Todo/Fix/Fixme (Trouble)" },
-- { "<leader>st", "<cmd>TodoTelescope<CR>", desc = "Todo" },
-- { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<CR>", desc = "Todo/Fix/Fixme" },
keymap.set('n', '<leader>ftt', '<cmd>TodoTelescope keywords=TODO<CR>', { desc = 'Find todo' })
keymap.set('n', '<leader>ftm', '<cmd>TodoTelescope keywords=MEMO<CR>', { desc = 'Find memo' })

keymap.set('n', '<leader>fz', '<cmd>Telescope colorscheme<CR>', { desc = 'List colorscheme with preview' })



-- keymap.set('n', '<leader>fn', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })


--
