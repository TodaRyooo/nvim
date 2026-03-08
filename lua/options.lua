local utils = require("utils")
local opt = utils.set
local cmd = utils.cmd

-- NOTE 基本設定
<<<<<<< HEAD
cmd("colorscheme gruvbox")
=======
-- cmd("colorscheme tokyonight-night")
-- cmd("colorscheme gruvbox")
-- cmd("colorscheme onedark")
-- cmd("colorscheme murphy")
cmd("colorscheme cyberdream")
-- cmd("colorscheme slate")
-- cmd("colorscheme no-clown-fiesta")
-- cmd("colorscheme everforest")
>>>>>>> e804727 (260309)
cmd("syntax enable")
cmd("filetype plugin indent on")
opt.helplang = "ja"
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.termguicolors = true
opt.swapfile = false
<<<<<<< HEAD
=======
-- opt.background = "dark"
-- opt.background = "light"

-- -- NOTE タブやインデント関連の設定
-- cmd("set nowrap")
-- -- opt.tabstop = 2
-- opt.tabstop = 4
-- opt.expandtab = true
-- opt.shiftwidth = 2
-- -- opt.shiftwidth = 4
-- -- opt.softtabstop = 2
-- opt.softtabstop = 4
-- opt.autoindent = true
-- opt.smartindent = true
>>>>>>> e804727 (260309)

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
<<<<<<< HEAD
=======
-- cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
-- cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
-- cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")

-- autocmd系
-- vim.api.nvim_create_autocmd("VimEnter", { command = "ShowkeysToggle" })
-- vim.api.nvim_create_autocmd("VimEnter", { command = "RenderMarkdown toggle" })
-- vim.api.nvim_create_autocmd("VimEnter", { command = "ColorizerToggle" })

-- SetAllGreen()
-- vim.api.nvim_create_autocmd("ColorScheme", { pattern = "*", callback = SetAllGreen })

HighLightInfo()

>>>>>>> e804727 (260309)
cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")
