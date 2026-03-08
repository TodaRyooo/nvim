local key = require("utils").key

-- インサートモードのマッピング
key("i", "<C-w>", " => ", { noremap = true })
key("i", "<C-n>", "()<Left>", { noremap = true })
key("i", "<C-s>", ",", { noremap = true })
-- key("i", "<C-d>", "<BS>", { noremap = true })
key("i", "<C-f>", ".", { noremap = true })
key("i", "<C-h>", "<Left>", { noremap = true })
key("i", "<C-j>", "<Down>", { noremap = true })
key("i", "<C-k>", "<Up>", { noremap = true })
key("i", "<C-l>", "<Right>", { noremap = true })

<<<<<<< HEAD
key("i", "<C-e>", "<ESC><ESC>:w<CR>", { noremap = true })
=======
-- key("i", "<C-e>", "<ESC>:w<CR>", { noremap = true })

-- key("i", "<C-b>", [[<Plug>(skkeleton-enable)]], { noremap = false })
-- key("i", "<C-e>", function()
-- 	vim.api.nvim_feedkeys(
-- 		vim.api.nvim_replace_termcodes("<Plug>(skkeleton-enable)", true, false, true),
-- 		"n", -- 'n' を指定すると<Plug>とかの特殊なキーシーケンスをちゃんと解釈してくれる
-- 		false
-- 	)
--   vim.cmd("echo 'SKK Enabled'")
-- end, { noremap = false })
--
-- key("i", "<C-w>", function()
-- 	vim.api.nvim_feedkeys(
-- 		vim.api.nvim_replace_termcodes("<Plug>(skkeleton-disable)", true, false, true),
-- 		"n", -- 'n' を指定すると<Plug>とかの特殊なキーシーケンスをちゃんと解釈してくれる
-- 		false
-- 	)
--   vim.cmd("echo 'SKK Disabled'")
-- end, { noremap = false })
--
-- key("i", "<C-g>", function()
-- 	vim.api.nvim_feedkeys(
-- 		vim.api.nvim_replace_termcodes("<Plug>(skkeleton-toggle)", true, false, true),
-- 		"n", -- 'n' を指定すると<Plug>とかの特殊なキーシーケンスをちゃんと解釈してくれる
-- 		false
-- 	)
--   vim.cmd("echo 'SKK Toggled' ")
-- end, { noremap = false })
-- key("i", "<C-n>", [[<Plug>(skkeleton-disable)]], { noremap = false })
>>>>>>> e804727 (260309)
