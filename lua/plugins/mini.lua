return {
	"echasnovski/mini.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("mini.indentscope").setup()
	end,
}
