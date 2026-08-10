return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
	},

	keys = {
		{ "<space><space>tt", "<cmd>Telescope<CR>", desc = "Telescope" },
		{ "<space><space>tf", "<cmd>Telescope find_files<CR>", desc = "Find files" },
		{ "<space><space>tl", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
		{ "<space><space>tb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
		{ "<space><space>tk", "<cmd>Telescope keymaps<CR>", desc = "Keymaps" },
		{ "<space><space>tc", "<cmd>Telescope commands<CR>", desc = "Commands" },
	},

	config = function()
		local telescope = require("telescope")
		telescope.load_extension("live_grep_args")
	end,
}
