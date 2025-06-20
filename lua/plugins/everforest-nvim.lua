return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000,
	background = "hard",

	config = function()
		require("everforest").setup({})
	end,
}
