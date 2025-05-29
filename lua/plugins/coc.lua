return {
	"neoclide/coc.nvim",
	branch = "release",

	config = function()
		vim.keymap.set("n", "<C-j>", ":call CocActionAsync('definitionHover')<CR>")
		vim.keymap.set("n", "<C-g>", "<Plug>(coc-references)")
		vim.keymap.set("n", "<space>fj", "<Plug>(coc-rename)")
	end,
}
