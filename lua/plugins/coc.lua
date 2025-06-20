return {
	"neoclide/coc.nvim",
	branch = "release",

	config = function()
		vim.g.coc_global_extensions = {
			"coc-tsserver",
			"coc-json",
			"coc-css",
			"coc-html",
		}

		vim.keymap.set("n", "<C-j>", ":call CocActionAsync('definitionHover')<CR>")
		vim.keymap.set("n", "<C-g>", "<Plug>(coc-references)", { noremap = true })
		vim.keymap.set("n", "<C-k>", "<Plug>(coc-definition)", {})
		vim.keymap.set("n", "<space>fj", "<Plug>(coc-rename)")
	end,
}
