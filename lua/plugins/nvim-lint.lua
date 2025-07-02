return {
	"mfussenegger/nvim-lint",
	-- lazy = false,
	event = { "BufReadPre", "BufNewFile" },

	cmd = function()
		local lint = require("lint")
		-- vim.env.ESLINT_D_PPID = vim.fn.getpid()

		lint.linters_by_ft = {
			javascript = { "eslint_d", "cspell" },
			typescript = { "eslint_d", "cspell" },
			javascriptreact = { "eslint_d", "cspell" },
			typescriptreact = { "eslint_d", "cspell" },
			lua = { "luacheck" },
			python = { "flake8" },
			css = { "stylelint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			vim = { "vimlint" },
			zsh = { "shellcheck" },
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("nvim-lint-autogroup", { clear = true }),
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
