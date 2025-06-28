return {
	"sbdchd/neoformat",

	config = function()
		vim.g.neoformat_enabled_javascript = { "prettier" }
		vim.g.neoformat_enabled_typescript = { "prettier" }
		vim.g.neoformat_enabled_lua = { "stylua" }
		vim.g.neoformat_enabled_sh = { "shfmt" }
		vim.g.neoformat_enabled_json = { "json" }
		vim.g.neoformat_enabled_html = { "prettier" }
		vim.g.neoformat_enabled_go = { "gofmt" }
		vim.g.neoformat_try_node_exe = 1

    -- vim.g.coc_preferences.formatOnSave = false

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.js,*.ts,*.jsx,*.tsx,*.scss,*.json,*.lua,*.html,*.go",
			callback = function()
				vim.cmd("Neoformat")
			end,
		})
	end,
}
