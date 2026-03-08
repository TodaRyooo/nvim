return {
  "windwp/nvim-ts-autotag",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte", "vue", "tsx", "jsx" },
  opts = {
    -- v1.0.0以降は opts に直接設定を書くスタイルが一般的です
    opts = {
      enable_close = true,
      enable_rename = true,
      enable_close_on_slash = false,
    },
  },
  -- もし上記で動かない場合は config を以下のように書き換えてください
  config = function(_, opts)
    require("nvim-ts-autotag").setup(opts)
  end,
}
