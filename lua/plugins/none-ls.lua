return {
  "nvimtools/none-ls.nvim",
  lazy = false,

  config = function()
    local null_ls = require("null-ls")
    local b = null_ls.builtins

    null_ls.setup({
      diagnostics_format = "[#{m}] #{s} (#{c})",
      sources = {
        b.formatting.prettier,
        b.formatting.stylua,
        b.formatting.stylelint,
        b.formatting.shfmt,
        b.formatting.gofmt,

        b.diagnostics.eslint_d,
      },
    })

    vim.keymap.set("n", "<space>e", function()
      vim.lsp.buf.format()
    end)
  end,
}
