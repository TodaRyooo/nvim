return {
	"folke/noice.nvim",

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
