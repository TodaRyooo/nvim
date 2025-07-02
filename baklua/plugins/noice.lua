return {
	"folke/noice.nvim",
	lazy = false,

	config = function()
		require("noice").setup({
			opts = {
				-- skip = true,
			},
			routes = {
				filter = {
					event = "msg_show",
					kind = "",
					find = "written",
				},
			},
		})
	end,
}
