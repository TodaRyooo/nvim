local key = require("utils").key

return {
	"APZelos/blamer.nvim",
	lazy = false,
	config = function()
		key("n", "<space>q", ":BlamerToggle<CR>", { noremap = true })
	end,
}
