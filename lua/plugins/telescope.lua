local key = require("utils").key

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
	},

	config = function()
		local telescope = require("telescope")
		telescope.load_extension("live_grep_args")

		key("n", "<space><space>tt", ":Telescope<CR>", { noremap = true })
		key("n", "<space><space>tf", ":Telescope find_files<CR>", { noremap = true })
		key("n", "<space><space>tl", ":Telescope live_grep<CR>", { noremap = true })
		key("n", "<space><space>tb", ":Telescope buffers<CR>", { noremap = true })
		key("n", "<space><space>tk", ":Telescope keymaps<CR>", { noremap = true })
		key("n", "<space><space>tc", ":Telescope commands<CR>", { noremap = true })
	end,
}
