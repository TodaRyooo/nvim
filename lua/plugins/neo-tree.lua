local key = require("utils").key

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		-- "MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {},

	config = function()
		key("n", "<C-q>", ":Neotree toggle left reveal_force_cwd<cr>", { silent = true })
	end,
}
