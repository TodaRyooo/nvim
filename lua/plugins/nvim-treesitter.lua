vim.filetype.add({
	extension = {
		["blade.php"] = "blade",
	},
})

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"python",
			},
			sync_install = true,
		})
	end,
}
