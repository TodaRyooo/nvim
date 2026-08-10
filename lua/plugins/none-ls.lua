return {
  "nvimtools/none-ls.nvim",
  event = {"BufReadPre", "BufNewFile"},

  config = function()
    local null_ls = require("null-ls")
    local b = null_ls.builtins

    -- Prettierの設定ファイルが存在するか確認する関数
    local has_prettier_config = function(u)
      return u.root_has_file({
        ".prettierrc",
        ".prettierrc.json",
        ".prettierrc.yml",
        ".prettierrc.yaml",
        ".prettierrc.js",
        ".prettierrc.cjs",
        "prettier.config.js",
        "prettier.config.cjs",
      })
    end

    null_ls.setup({
      diagnostics_format = "[#{m}] #{s} (#{c})",
      sources = {
        -- b.formatting.prettier,

        -- 1. 設定ファイルが存在する場合：通常のPrettier
        b.formatting.prettier.with({
          condition = function(u)
            return has_prettier_config(u)
          end,
        }),

        -- 2. 設定ファイルが存在しない場合：カスタムルールを適用
        b.formatting.prettier.with({
          condition = function(u)
            return not has_prettier_config(u)
          end,
          extra_args = {
            "--semi",
            "false", -- セミコロンなし
            "--single-quote",
            "true", -- シングルクォート
            "--tab-width",
            "2", -- インデント幅2
            "--print-width",
            "100",
          },
        }),

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
