-- 基本設定
vim.cmd("colorscheme everforest")

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.opt.termguicolors = true

-- タブやインデント関連の設定
vim.cmd("set nowrap") -- タブ幅を2スペースに設定
vim.opt.tabstop = 2 -- タブ幅を2スペースに設定
vim.opt.expandtab = true -- タブ入力をスペースに変換
vim.opt.shiftwidth = 2 -- 自動インデント幅を2スペースに設定
vim.opt.softtabstop = 2 -- バックスペースやタブキーでの移動幅を設定
vim.opt.autoindent = true -- 自動インデント
vim.opt.smartindent = true -- スマートインデント

-- 表示関連の設定
vim.opt.number = true -- 行番号を表示
vim.opt.cursorline = true -- カーソル行をハイライト
vim.opt.signcolumn = "yes" -- サインカラムを常に表示
vim.opt.mouse = "a" -- マウス操作を有効化
vim.opt.scrolloff = 5 -- カーソル上下の余白設定
-- vim.opt.cmdheight = 0         -- コマンドラインの高さ
vim.opt.virtualedit = "onemore" -- カーソルを行末の先に移動可能にする
vim.opt.pumblend = 3
-- vim.opt.winblend = 20

-- 検索関連の設定
vim.opt.incsearch = true -- インクリメンタルサーチを有効化
vim.opt.smartcase = true -- 検索時に大文字小文字を区別する場合がある設定
vim.opt.hlsearch = true

-- スワップファイルを無効化
vim.opt.swapfile = false

-- クリップボード設定
vim.opt.clipboard = "unnamedplus"

-- 更新時間
-- vim.opt.updatetime = 360 -- 0.36秒間操作がないときに CursorHold 発火

-- コマンド表示設定
-- vim.opt.showcmd = true

-- GitGutter の設定
vim.g.gitgutter_sign_column_always = 1

vim.cmd("hi! Identifier cterm=bold gui=bold ctermfg=69 guifg=#5f87ff")
vim.cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
vim.cmd("hi! Todo ctermfg=9 ctermbg=11 guifg=#ff0000 guibg=#ffff00")
vim.cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
vim.cmd("hi! Cursor cterm=bold gui=bold ctermfg=0 ctermbg=253 guifg=#000000 guibg=#ffffff")
vim.cmd("hi! FloatBorder ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
vim.cmd("hi! LineNr ctermfg=253 ctermbg=none guifg=#dadada guibg=none")
vim.cmd("hi! CursorLineNr ctermfg=237 ctermbg=253 guifg=#3a3a3a guibg=#dadada")
vim.cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")
--

vim.opt.encoding = "UTF-8"
vim.cmd("set laststatus=3") -- グローバルステータスラインを有効化

-- vim.api.nvim_create_autocmd('CursorHold', {
--   callback = function()
--     vim.cmd('silent! write')
--   end
-- })

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.cmd("silent! write")
	end,
})
