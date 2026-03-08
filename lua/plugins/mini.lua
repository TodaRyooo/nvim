return {
  "echasnovski/mini.nvim",
  version = "*",
  lazy = false,
  config = function()
    require("mini.git").setup()
    require("mini.comment").setup()
    require("mini.sessions").setup()
    require("mini.pairs").setup()
    require("mini.starter").setup()
  end,
}
