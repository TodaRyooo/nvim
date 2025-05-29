local key = require("utils").key

return {
	"APZelos/blamer.nvim",

	config = function()
		key("n", "<space>q", ":BlamerToggle<CR>", { noremap = true })
	end,
}
