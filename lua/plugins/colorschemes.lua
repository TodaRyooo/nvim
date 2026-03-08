return {
	-- everforest
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		background = "hard",

		config = function()
			require("everforest").setup({})
		end,
	},

<<<<<<< HEAD
=======
	-- cyberdream
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- variant = "light",
				italic_comments = true,
				transparent = true,
			})
		end,
	},

>>>>>>> e804727 (260309)
	-- gruvbox
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				-- transparent_mode = true,
			})
		end,
	},

	-- tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
<<<<<<< HEAD
=======

	-- onedark
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "warmer",
				transparent = true,
			})
			require("onedark").load()
		end,
	},
>>>>>>> e804727 (260309)
}
