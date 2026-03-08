return {
  "nvimtools/none-ls.nvim",
  lazy = false,

  config = function()
    local null_ls = require("null-ls")
    local b = null_ls.builtins
    local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
    null_ls.setup({
      diagnostics_format = "[#{m}] #{s} (#{c})",
      sources = {
        b.formatting.prettier.with({
          cwd = vim.lsp.buf.server_ready and vim.lsp.buf.get_clients()[1].root_dir or vim.loop.cwd(),
        }),
        b.formatting.stylua,
        b.formatting.stylelint,
        b.formatting.shfmt,
        b.formatting.gofmt,
        b.formatting.rubocop,
        b.formatting.pint,
        b.formatting.blade_formatter,
        b.formatting.erb_format,
        b.formatting.rubyfmt,
        b.formatting.black,
        b.formatting.markdownlint,

        -- .with({
        -- filetypes = { "blade", "blade.php" },
        -- extra_args = {
        --   "--rules=@PSR2",
        --   "--indent-with-space",
        --   "--set-indent=2",
        -- },
        -- }),
        -- b.diagnostics.eslint_d,
        b.diagnostics.flake8,
        b.diagnostics.erb_lint,

        b.completion.spell,
      },

      -- vim.keymap.set("n", "<space>e", function()
      --   vim.lsp.buf.format()
      -- end),

      -- on_attach = function(client, bufnr)
      -- 	if client.supports_method("textDocument/formatting") then
      -- 		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      -- 		vim.api.nvim_create_autocmd("BufWritePre", {
      -- 			group = augroup,
      -- 			buffer = bufnr,
      -- 			callback = function()
      -- 				vim.lsp.buf.format()
      -- 			end,
      -- 		})
      -- 	end
      -- end,
    })
  end,
}
