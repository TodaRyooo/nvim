return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000,
	theme = "hard",

	config = function()
		require("everforest").setup({})
	end,
}
