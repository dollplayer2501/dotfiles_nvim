--

-- How I Setup Neovim To Make It AMAZING in 2024: The Ultimate Guide - YouTube
-- https://www.youtube.com/watch?v=6pAG3BHurdM
--
-- How I Setup Neovim On My Mac To Make it AMAZING in 2024
-- https://www.josean.com/posts/how-to-setup-neovim-2024
--

-- TODO: gitを使いやすく連動
-- TODO: イメージファイルのプレビューを組み込む=> KittyとかWeztermとか？
-- TODO: telescope-media-files.nvim
-- TODO: より視覚効果の良いdiff環境
-- TODO: 導入→ https://github.com/cohama/lexima.vim
-- TODO: keaising/im-select.nvim: Switch Input Method automatically depends on Neovim's edit mode https://github.com/keaising/im-select.nvim
-- TODO: Xuyuanp/scrollbar.nvim: scrollbar for neovim https://github.com/xuyuanp/scrollbar.nvim
-- TODO: https://github.com/sindrets/diffview.nvim
-- TODO: fzf-lua
-- TODO: コマンドボックスのフォントが斜体なので、普通にする
-- TODO: https://github.com/FabianWirth/search.nvim  Telescopeでタブを扱う
-- TODO: 行末のスペース2文字をハイライトさせる
-- TODO: マークダウンファイルのプレビュー（ブラウザを使う、とかでなく？）


-- DONE: boo-colorscheme-nvim
-- DONE: miasma.nvim
-- DONE: nordic.nvim
-- DONE: Base2Tone-nvim
-- DONE: shaunsingh/nord.nvim


require('test01.core')
require('test01.lazy')


-- MEMO: カラースキームの決定はここで
-- 総合的に見て、夜東京以外、どうだろう感
vim.cmd('colorscheme tokyonight-storm')


--
