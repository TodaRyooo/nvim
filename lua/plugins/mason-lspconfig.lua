return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		-- "neovim/nvim-lspconfig",
	},

	config = function()
		local ensure_installed = { "ts_ls", "lua_ls" }
		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = ensure_installed,
		})

		-- luaの設定
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		vim.lsp.enable("lua_ls")

		-- typescriptの設定
		vim.lsp.config("ts_ls", {
			filetypes = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			},
			root_markers = {
				"tsconfig.json",
				"jsconfig.json",
				"package.json",
				".git",
			},
		})
		vim.lsp.enable("ts_ls")

		-- cssの設定
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		vim.lsp.config("cssls", {
			capabilities = capabilities,
			filetypes = {
				"css",
				"scss",
			},
			init_option = {
				providerFormatter = true,
			},
			root_markers = {
				"package.json",
				".git",
			},
		})
		vim.lsp.enable("cssls")

		-- tailwindcssの設定
		vim.lsp.enable("tailwindcss")

		-- bashの設定
		vim.lsp.enable("bashls")
	end,
}
