return {
	"echasnovski/mini.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("mini.indentscope").setup()
		require("mini.git").setup()
		require("mini.clue").setup()
		-- require("mini.starter").setup()
		-- require("mini.completion").setup()
	end,
}
