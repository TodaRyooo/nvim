local key = require("utils").key

return {
	"smoka7/hop.nvim",
	version = "*",
	lazy = false,
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},

	config = function()
		require("hop").setup()
		-- key("n", "'w", ":HopWord<cr>", { silent = true })
		key("n", "'l", ":HopLine<cr>", { silent = true })
		key("n", "]l", ":HopLine<cr>", { silent = true })
		key("n", "'h", ":HopChar1<cr>", { silent = true })
		key("n", "]h", ":HopChar1<cr>", { silent = true })
	end,
}
