local key = require("utils").key

return {
	"akinsho/toggleterm.nvim",
	lazy = false,

	config = function()
		require("toggleterm").setup({
			version = "*",
			direction = "float",
		})
		key("n", "<space><space>w", ":ToggleTerm<cr>", { silent = true })
	end,
}
