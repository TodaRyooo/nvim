-- 基本設定
vim.cmd("colorscheme everforest")

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
-- vim.cmd("ShowkeysToggle")
vim.opt.termguicolors = true

-- タブやインデント関連の設定
vim.cmd("set nowrap")
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- 表示関連の設定
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = "a"
vim.opt.scrolloff = 5
vim.opt.virtualedit = "onemore"
vim.opt.pumblend = 3
vim.opt.encoding = "UTF-8"

-- 検索関連の設定
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- スワップファイルを無効化
vim.opt.swapfile = false

-- クリップボード設定
vim.opt.clipboard = "unnamedplus"

-- -- 更新時間
-- vim.opt.updatetime = 360

-- コマンド表示設定
-- vim.opt.showcmd = true

-- ハイライト設定
vim.cmd("hi! Identifier cterm=bold gui=bold ctermfg=69 guifg=#5f87ff")
vim.cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
vim.cmd("hi! Todo ctermfg=9 ctermbg=11 guifg=#ff0000 guibg=#ffff00")
vim.cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
vim.cmd("hi! Cursor cterm=bold gui=bold ctermfg=0 ctermbg=253 guifg=#000000 guibg=#ffffff")
vim.cmd("hi! FloatBorder ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
vim.cmd("hi! LineNr ctermfg=253 ctermbg=none guifg=#dadada guibg=none")
vim.cmd("hi! CursorLineNr ctermfg=237 ctermbg=253 guifg=#3a3a3a guibg=#dadada")
vim.cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.cmd("silent! write")
	end,
})
