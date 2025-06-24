local palettes = {
	carbonfox = {
		bg1 = "#2d2d2d",
	},
}

return {

	"EdenEast/nightfox.nvim",

	config = function()
		require("nightfox").setup({
			palettes = palettes,
		})
	end,
}
