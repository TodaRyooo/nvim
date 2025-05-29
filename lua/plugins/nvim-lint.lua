return {
	"mfussenegger/nvim-lint",
	lazy = false,
	-- event = { "BufReadPre", "BufNewFile" },

	config = function()
		require("lint").setup({
			linters_by_ft = {
				javascript = { "eslint" },
				typescript = { "eslint" },
				javascriptreact = { "eslint" },
				typescriptreact = { "eslint" },
				lua = { "stylua" },
				python = { "flake8" },
				css = { "stylelint" },
				html = { "htmlhint" },
				json = { "jsonlint" },
				vim = { "vimlint" },
				zsh = { "shellcheck" },
			},
			debounce_time = 200,
		})
	end,
}
