local key = require("utils").key

return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			-- lua = { "luacheck" },
			-- python = { "flake8" },
			css = { "stylelint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			vim = { "vimlint" },
			zsh = { "shellcheck" },
		}

		lint.try_lint()

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			-- pattern = { "*.ts", "*.js", "*.tsx", "*.jsx", "*.lua", "*.sh", "*.css", "*.scss" },
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		key("n", "<space><space>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
