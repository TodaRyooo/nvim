local key = require("utils").key

return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("lspsaga").setup({
			lightbulb = {
				enable = true,
			},

			key("n", "K", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true }),
			key("n", "<C-j>", ":Lspsaga peek_definition<CR>", { noremap = true, silent = true }),
			key("n", "<C-k>", ":Lspsaga goto_definition<CR>", { noremap = true, silent = true }),
			key("n", "<space>ca", ":Lspsaga code_action<CR>", { noremap = true, silent = true }),
			key("n", "grr", ":Lspsaga finder<CR>", { noremap = true, silent = true }),
			--
			-- key("n", "<space><space>h", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true }),
			-- key("n", "<C-j>", ":Lspsaga peek_definition<CR>", { noremap = true, silent = true }),
			-- key("n", "<C-k>", ":Lspsaga goto_definition<CR>", { noremap = true, silent = true }),
			-- key("n", "<space><space>c", ":Lspsaga code_action<CR>", { noremap = true, silent = true }),
			-- key("n", "<C-g>", ":Lspsaga finder<CR>", { noremap = true, silent = true }),
			key("n", "grn", ":Lspsaga rename<CR>", { noremap = true, silent = true }),
			key("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = true }),
			key("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = true }),
			key("n", "<space><space>w", ":Lspsaga term_toggle<CR>", { noremap = true, silent = true }),
		})
	end,
}
