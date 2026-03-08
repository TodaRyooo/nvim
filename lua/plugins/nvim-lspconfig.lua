return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
<<<<<<< HEAD
			ensure_installed = { "lua_ls", "ts_ls", "markdown_oxide", "html", "yamlls", "go", "postgres_lsp" },
=======
			-- ensure_installed = { "lua_ls", "ts_ls", "ruby_lsp" },
			ensure_installed = { "ts_ls", "ruby_lsp", "intelephense", "laravel_ls" },
>>>>>>> e804727 (260309)
		})

		local lspconfig = require("lspconfig")
		-- lspconfig.lua_ls.setup({
		--   settings = {
		--     Lua = {
		--       diagnostics = { globals = { "vim" } },
		--       workspace = { checkThirdParty = false },
		--       telemetry = { enable = false },
		--     },
		--   },
		-- })

<<<<<<< HEAD
		-- lspconfig.ts_ls.setup({})
		-- lspconfig.eslint_d.setup({
		-- 	settings = {
		-- 		enable = true,
		-- 	},
		-- })
		lspconfig.cssls.setup({})
=======
		local capabilities = vim.lsp.protocol.make_client_capabilities()

		-- lspconfig.laravel_ls.setup({
		-- 	cmd = { "/Users/erevista_04/go/bin/laravel-ls" },
		-- 	capabilities = capabilities,
		-- })

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = { checkThirdParty = true },
					telemetry = { enable = true },
				},
			},
		})

		vim.lsp.config("pylsp", {
			filetypes = { "python", "ipynb" },
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = {
							ignore = { "W391" },
							maxLineLength = 100,
						},
					},
				},
			},
		})

		lspconfig.intelephense.setup({
			-- "blade" を追加することで、上記で設定したファイルタイプに反応するようにします
			filetypes = { "php", "blade" },
			capabilities = capabilities,
			settings = {
				intelephense = {
					-- ここに必要に応じて設定を追加
					files = {
						associations = { "*.php", "*.blade.php" }, -- サーバー側にも認識させる
					},
				},
			},
		})
		-- lspconfig.ts_ls.setup({})

		-- lspconfig.eslint_d.setup({
		--   settings = {
		--     enable = true,
		--   },
		-- })

		-- lspconfig.cssls.setup({})
>>>>>>> e804727 (260309)

		-- オプション: 一般的なLSPアクションのキーバインド (このファイルにまとめるのが良い)
		-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
		-- vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]oto [R]eferences" })
		-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })
		-- vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
		-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
		-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
		-- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
		-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
		-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
		-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix" })
		-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format (requires formatter)" })
<<<<<<< HEAD
		--
=======

		-- .ipynb ファイルを python もしくは ipynb ファイルタイプとして扱う設定
		vim.filetype.add({
			extension = {
				ipynb = "python", -- もしくは "ipynb"
				["blade.php"] = "blade",
			},
		})

>>>>>>> e804727 (260309)
		-- LSPがバッファにアタッチされた際に実行されるオートコマンド
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
				vim.bo[ev.buf].formatexpr = "v:lua.vim.lsp.formatexpr"
			end,
		})
	end,
}
