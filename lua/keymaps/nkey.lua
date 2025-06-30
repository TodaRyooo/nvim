local key = require("utils").key

-- ショートカット
key("n", "zx", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })
key("n", "<C-e>", ":w<CR>", { noremap = true })

-- ウィンドウ操作
key("n", "<C-l>", "gt", { noremap = true })
key("n", "<C-h>", "gT", { noremap = true })
key("n", "<C-p>", "<C-^>", { noremap = true })

-- arg周り
key("n", "<space><space>a", ":argadd %<CR>", { noremap = true })
key("n", "<space><space>d", ":argdelete %<CR>", { noremap = true })
key("n", "<space><space>s", ":args ", { noremap = true })

-- テキスト操作
key("n", "<space>h", "^", { noremap = true })
key("n", "<space>l", "$", { noremap = true })
key("n", "<C-]>", "ggVG", { noremap = true })

-- Git の操作
key("n", "<space>gd", ":Gdiff<CR>", { noremap = true })
key("n", "<space>gs", ":vert G show ", { noremap = true })

-- 行に関する操作
key("n", "<Up>", ":m .-2<CR>", { noremap = true, silent = true })
key("n", "<Down>", ":m .+1<CR>", { noremap = true, silent = true })
key("n", "<C-s>", [[:lua CompleteUseState()<CR> :w<CR>]], { noremap = true, silent = true })
key("n", "<C-i>", [[:lua YankFileName()<CR>]], { noremap = true, silent = true })

-- ALE
key("n", "<Right>", ":ALENextWrap <CR>", { noremap = true, silent = true })
key("n", "<Left>", ":ALEPreviousWrap <CR>", { noremap = true, silent = true })

-- Google検索
key("n", "<space><space>g", ":OpenBrowserSearch ", { noremap = true })

-- markdownのプレビュー
key("n", "<space><space>m", ":CocCommand markdown-preview-enhanced.openPreview<CR>", { noremap = true })

-- NERDTree
-- key("n", "<C-t>", ":NERDTreeToggle<CR>", { noremap = true })
key("n", "<C-t>", ":Neotree toggle reveal_force_cwd<CR>", { noremap = true, silent = true })
-- telescopeのfind_files機能を使う方法に移行
-- key("n", "<space><space>f", ":NERDTreeFind ", { noremap = true })
key("n", "<space>x", ":Neotree reveal<CR>", { noremap = true, silent = true })
-- key("n", "<space>x", ":NERDTreeFind %<CR>", { noremap = true })

-- -- Pantran
-- key("n", "<space>tr", ":Pantran<CR>", { noremap = true })
