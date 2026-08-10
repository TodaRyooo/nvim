local key = require("utils").key

-- gitsigns
key("n", "<space>gd", ":Gitsigns diffthis<CR>", { noremap = true })
key("n", "<space>gb", ":Gitsigns blame<CR>", { noremap = true })
key("n", "<space>q", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true })
key("n", "<space>gs", ":Gitsigns show_commit ", { noremap = true })

-- lspsaga
key("n", "K", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true })
key("n", "<C-j>", ":Lspsaga peek_definition<CR>", { noremap = true, silent = true })
key("n", "<C-k>", ":Lspsaga goto_definition<CR>", { noremap = true, silent = true })
key("n", "<space>ca", ":Lspsaga code_action<CR>", { noremap = true, silent = true })
key("n", "grr", ":Lspsaga finder<CR>", { noremap = true, silent = true })
key("n", "grn", ":Lspsaga rename<CR>", { noremap = true, silent = true })
key("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true })
key("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true })
key("n", "<space><space>w", ":Lspsaga term_toggle<CR>", { noremap = true, silent = true })

-- mini.jump2d
key("n", "<leader>j", function()
  require("mini.jump2d").start()
end, { desc = "Jump2d" })

-- none-ls (LSPフォーマット実行)
key("n", "<space>e", function()
  vim.lsp.buf.format()
end, { noremap = true })
