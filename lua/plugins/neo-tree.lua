local key = require("utils").key

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		-- "MunifTanjim/nui.nvim",
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {},

	config = function()
		key("n", "<C-q>", ":Neotree toggle left reveal_force_cwd<cr>", { silent = true })
		key("n", "<space>x", ":Neotree focus<cr>", { silent = true })
	end,
}
