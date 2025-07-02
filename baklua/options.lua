local utils = require("utils")
local opt = utils.set
local cmd = utils.cmd

-- NOTE 基本設定
cmd("colorscheme slate")
cmd("syntax enable")
cmd("filetype plugin indent on")
opt.helplang = "ja"
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.termguicolors = true
opt.swapfile = false
-- opt.background = "light"

-- NOTE タブやインデント関連の設定
cmd("set nowrap")
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true

-- NOTE 表示関連の設定
opt.number = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 5
opt.virtualedit = "onemore"
opt.pumblend = 3
opt.encoding = "UTF-8"

-- NOTE 検索関連の設定
opt.incsearch = true
opt.smartcase = true
opt.hlsearch = true

-- NOTE 更新時間
opt.updatetime = 360

-- NOTE ハイライト設定
cmd("hi! Identifier cterm=bold gui=bold ctermfg=69 guifg=#5f87ff")
cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
cmd("hi! Todo ctermfg=9 ctermbg=11 guifg=#ff0000 guibg=#ffff00")
cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
cmd("hi! Cursor cterm=bold gui=bold ctermfg=0 ctermbg=253 guifg=#000000 guibg=#ffffff")
cmd("hi! FloatBorder ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
cmd("hi! LineNr ctermfg=253 ctermbg=none guifg=#dadada guibg=none")
cmd("hi! CursorLineNr ctermfg=237 ctermbg=253 guifg=#3a3a3a guibg=#dadada")
cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")
