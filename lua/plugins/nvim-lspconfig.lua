return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = false,
			ensure_installed = { "ts_ls", "gopls", "eslint" },
		})

		local lspconfig = require("lspconfig")
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = { checkThirdParty = false },
					telemetry = { enable = false },
				},
			},
		})

		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
		})

		vim.filetype.add({
			extension = {
				ipynb = "python",
			},
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
				vim.bo[ev.buf].formatexpr = "v:lua.vim.lsp.formatexpr"
			end,
		})
	end,
}
