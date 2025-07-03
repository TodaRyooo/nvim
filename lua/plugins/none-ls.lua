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
        b.formatting.prettier,
        b.formatting.stylua,
        b.formatting.stylelint,
        b.formatting.shfmt,
        b.formatting.gofmt,
        -- b.diagnostics.eslint_d,
        b.completion.spell,
      },

      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format()
            end,
          })
        end
      end,
    })
  end,
}
