return {
	"rcarriga/nvim-notify",
  lazy = false,

	config = function()
		require("notify").setup({
			timeout = 3000,
			stages = "static",
		})
	end,
}
