--
--
--

-- MEMO: Netrwプラグインの表示スタイルを変更
-- Netrwは、Vimに標準で組み込まれているファイルエクスプローラ
--   0: デフォルトのリスト表示（ファイルをリスト形式で表示）
--   1: シンプルなリスト表示
--   2: 詳細表示（ファイルの詳細情報を含む）
--   3: ツリー形式の表示（ディレクトリを階層的に表示）
vim.cmd('let g:netrw_liststyle = 3')


local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2     -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2  -- 2 spaces for indent width
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'  -- colorschemes that can be light or dark will be made dark
opt.signcolumn = 'yes'   -- show sign column so that text doesn't shift

-- backspace
-- allow backspace on indent, end of line or insert mode start position
opt.backspace = 'indent,eol,start'

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- opt.hidden = true
-- autocmd BufReadPost * setlocal bufhidden=wipe

opt.whichwrap:append("<,>,h,l")

-- MEMO: xclip/xselのインストール、`"+yy`
-- use system clipboard as default register
opt.clipboard = unnamedplus


--
