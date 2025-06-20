local key = require("utils").key

-- インサートモードのマッピング
key("i", "<C-w>", " => ", { noremap = true })
key("i", "<C-v>", "{}<Left>", { noremap = true })
key("i", "<C-b>", "[]<Left>", { noremap = true })
key("i", "<C-n>", "()<Left>", { noremap = true })
key("i", "<C-s>", ",", { noremap = true })
key("i", "<C-d>", "<BS>", { noremap = true })
key("i", "<C-f>", ".", { noremap = true })
key("i", "<C-h>", "<Left>", { noremap = true })
key("i", "<C-j>", "<Down>", { noremap = true })
key("i", "<C-k>", "<Up>", { noremap = true })
key("i", "<C-l>", "<Right>", { noremap = true })

key("i", "<C-e>", "<ESC>:w<CR>", { noremap = true })
