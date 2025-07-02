local key = require("utils").key

return {
	"folke/zen-mode.nvim",
  lazy = false,
	opts = {
		window = {
			width = 500,
		},
	},

	config = function()
		key("n", "<space><space>z", ":ZenMode<CR>", { noremap = true })
	end,
}
