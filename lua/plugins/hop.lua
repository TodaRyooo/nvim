local key = require("utils").key

return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},

	config = function()
		require("hop").setup()
		key("n", ";h", ":HopWord<cr>", { silent = true })
		key("n", ";l", ":HopLine<cr>", { silent = true })
		key("n", ";c", ":HopChar1<cr>", { silent = true })
	end,
}
