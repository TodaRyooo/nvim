local key = require("utils").key

return {
	"neoclide/coc.nvim",
	branch = "release",
	lazy = false,

	config = function()
		vim.g.coc_global_extensions = {
			"coc-tsserver",
			"coc-json",
			"coc-css",
			"coc-html",
		}

		key("n", "<C-j>", ":call CocActionAsync('definitionHover')<CR>")
		key("n", "<C-g>", "<Plug>(coc-references)", { noremap = true })
		key("n", "<C-k>", "<Plug>(coc-definition)", {})
		key("n", "<space>fj", "<Plug>(coc-rename)")
	end,
}
