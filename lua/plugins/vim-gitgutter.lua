return {
	"airblade/vim-gitgutter",

	config = function()
		vim.g.gitgutter_max_signs = 5000
		vim.opt.signcolumn = "auto"
		vim.g.gitgutter_override_sign_column_highlight = 0
	end,
}
