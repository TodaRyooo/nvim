local key = require("utils").key

return {
	"akinsho/toggleterm.nvim",

	config = function()
		require("toggleterm").setup({
			version = "*",
			direction = "float",
		})
		key("n", "<space><space>w", ":ToggleTerm<cr>", { silent = true })
	end,
}
