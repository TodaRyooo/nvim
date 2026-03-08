local key = require("utils").key

return {
	"stevearc/conform.nvim",
	opts = {},

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettier", lsp_format = "fallback" },
				blade = { "blade-formatter" },
				php = { "pint" },
				-- Conform will run multiple formatters sequentially
				python = { "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier", stop_after_first = true },
				javascriptreact = { "prettier", stop_after_first = true },
				typescriptreact = { "prettier", stop_after_first = true },
			},
		})

		key("n", "<space>e", function()
			require("conform").format({
				async = true,
				lsp_fallback = true, -- conformで設定されていないファイルタイプはLSPに任せる
			})
		end, { noremap = true, desc = "Format with Conform" })
	end,
}
