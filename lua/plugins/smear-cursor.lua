return {
	"sphamba/smear-cursor.nvim",
  lazy = false,

	init = function()
		require("smear_cursor").setup()
	end,
}
