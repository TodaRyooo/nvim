return {
	"goolord/alpha-nvim",
	lazy = false,
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("alpha").setup(require("alpha.themes.startify").config)
	end,
}
