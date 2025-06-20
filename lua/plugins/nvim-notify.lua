return {
	"rcarriga/nvim-notify",

	config = function()
		require("notify").setup({
			timeout = 3500,
			stages = "static",
		})
	end,
}
