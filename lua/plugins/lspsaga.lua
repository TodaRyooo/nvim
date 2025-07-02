local key = require("utils").key

return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("lspsaga").setup({
      key("n", "<C-j>", ":Lspsaga peek_definition<cr>", { noremap = true, silent = true }),
      key("n", "<C-g>", ":Lspsaga finder<cr>", { noremap = true, silent = true }),
      key("n", "<C-k>", ":Lspsaga goto_definition<cr>", { noremap = true, silent = true }),
      key("n", "<space>fj", ":Lspsaga rename<cr>"),
      key("n", "<space><space>w", ":Lspsaga term_toggle<cr>", { silent = true }),
    })
  end,
}
