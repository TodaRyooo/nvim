return {
	"folke/noice.nvim",

	config = function()
		require("noice").setup({
			routes = {
				{
					filter = {
						event = "msg_show",
						kind = "",
						find = "written",
					},
					opts = { skip = true },
				},
			},
		})
	end,
}
