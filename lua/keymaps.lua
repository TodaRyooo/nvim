local key = require("utils").key

-- インサートモードのマッピング
key("i", "{", "{}<Left>", { noremap = true })
key("i", "(", "()<Left>", { noremap = true })
key("i", "<C-n>", "()<Left>", { noremap = true })
key("i", "[", "[]<Left>", { noremap = true })
key("i", "'", "''<Left>", { noremap = true })
key("i", '"', '""<Left>', { noremap = true })
key("i", "<C-k>", "<Up>", { noremap = true })
key("i", "<C-l>", "<Right>", { noremap = true })
key("i", "<C-j>", "<Down>", { noremap = true })
key("i", "<C-h>", "<Left>", { noremap = true })
key("i", "<C-w>", "<BS>", { noremap = true })

-- ノーマルモードのウィンドウ移動
key("n", "<Right>", "<Nop>", { noremap = true })
key("n", "<Left>", "<Nop>", { noremap = true })
key("n", "<space><space>h", "<C-w>h", { noremap = true })
key("n", "<space><space>j", "<C-w>j", { noremap = true })
key("n", "<space><space>k", "<C-w>k", { noremap = true })
key("n", "<space><space>l", "<C-w>l", { noremap = true })

-- コマンドのマッピング
key("n", "zx", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })
key("n", "<C-l>", "gt", { noremap = true })
key("n", "<C-h>", "gT", { noremap = true })
key("n", "yp", ":t.<CR>", { noremap = true })
key("n", "Y", "yy", { noremap = true })
key("n", "<C-e>", ":w<CR>", { noremap = true })
key("n", "<space><space>99", ":set notermguicolors<CR>", { noremap = true })

key("n", "<space><C-m>", "<C-^>", { noremap = true })
key("n", "<C-->", "<C-_>", { noremap = true })

key("n", "<space><space>7", ":argadd %<CR>", { noremap = true })
key("n", "<space><space>8", ":argdelete %<CR>", { noremap = true })
key("n", "<space><space>9", ":args ", { noremap = true })

-- インサートモードの特殊キー
key("i", "<C-e>", "<ESC>:w<CR>", { noremap = true })
key("i", "<C-s>", ",", { noremap = true })
key("i", "<C-f>", ".", { noremap = true })
key("i", "<C-g>", " => ", { noremap = true })
key("i", "<C-d>", "<BS>", { noremap = true })

-- NERDTree の操作
key("n", "<space><space>f", ":NERDTreeFind ", { noremap = true })
key("n", "<C-t>", ":NERDTreeToggle<CR>", { noremap = true })

-- coc.nvim の操作
key("n", "<C-g>", "<Plug>(coc-references)", {})
key("n", "<C-_>", "<Plug>(coc-definition)", {})
key("n", "<space>fj", "<Plug>(coc-rename)", {})
key("n", "<C-j>", ":call CocActionAsync('definitionHover')<CR>", { noremap = true })

-- Blamer の操作
key("n", "<space>q", ":BlamerToggle<CR>", { noremap = true })

-- テキスト操作
key("n", "<space>h", "^", { noremap = true })
key("n", "<space>l", "$", { noremap = true })
key("n", "<C-]>", "ggVG$", { noremap = true })

-- Git の操作
key("n", "<space><space>1", ":G add ", { noremap = true })
key("n", "<space><space>2", ":Gdiff<CR>", { noremap = true })
key("n", "<space><space>3", ':G commit -m ""', { noremap = true })
key("n", "<space><space>4", ":G log --oneline -20<CR>", { noremap = true })
key("n", "<space><space>5", ":G push<CR>", { noremap = true })
key("n", "<space><space>6", ":vert G show ", { noremap = true })
key("n", "<space><space>89", ":CocCommand markdown-preview-enhanced.openPreview<CR>", { noremap = true })
key("n", "<space><space>0", ":G status -s<CR> ", { noremap = true })

-- 行ごと移動
key("n", "<Up>", ":m .-2<CR>", { noremap = true, silent = true })
key("n", "<Down>", ":m .+1<CR>", { noremap = true, silent = true })

-- キーマッピング
key("x", "<space>(", [[:lua SurroundWithBrackets('(', ')')<CR>]], { noremap = true, silent = true })
key("x", "<space>[", [[:lua SurroundWithBrackets('[', ']')<CR>]], { noremap = true, silent = true })
key("x", "<space>{", [[:lua SurroundWithBrackets('{', '}')<CR>]], { noremap = true, silent = true })
key("x", '<space>"', [[:lua SurroundWithBrackets('"', '"')<CR>]], { noremap = true, silent = true })
key("x", "<space>'", [[:lua SurroundWithBrackets("'", "'")<CR>]], { noremap = true, silent = true })
key("x", "<space>`", [[:lua SurroundWithBrackets('`', '`')<CR>]], { noremap = true, silent = true })
key("x", "<space>/", [[:lua SurroundWithBrackets('/* ', ' */')<CR>]], { noremap = true, silent = true })
key("x", "<space><", [[:lua SurroundWithBrackets('<', '>')<CR>]], { noremap = true, silent = true })
-- key('v', '"', '*', { noremap = true })
key("n", "<C-s>", [[:lua CompleteUseState()<CR> :w<CR>]], { noremap = true, silent = true })
key("n", "<C-i>", [[:lua YankFileName()<CR>]], { noremap = true, silent = true })

key("n", "<C-p>", ":set laststatus=3<CR>", { noremap = true })

-- ALEのキーマップ
key("n", "<Right>", ":ALENextWrap <CR>", { noremap = true })
key("n", "<Left>", ":ALEPreviousWrap <CR>", { noremap = true })

-- Telescope
key("n", "<space><space>t", ":Telescope <CR>", { noremap = true })

-- スクリプト呼び出し
-- key("n", "<space><space>9", ":r /Users/rtoda/scripts/js_template.txt<CR>", { noremap = true })

-- Google検索
key("n", "<space><space>g", ":OpenBrowserSearch ", { noremap = true })
