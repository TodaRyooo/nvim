local key = require("utils").key

return {
	"lewis6991/gitsigns.nvim",
	lazy = false,

	config = function()
		require("gitsigns").setup()
		key("n", "<space>gd", ":Gitsigns diffthis<CR>", { noremap = true })
		key("n", "<space>gb", ":Gitsigns blame<CR>", { noremap = true })
		key("n", "<space>q", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true })
		key("n", "<space>gs", ":Gitsigns show_commit ", { noremap = true })
	end,
}
