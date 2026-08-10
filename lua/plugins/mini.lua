return {
  "echasnovski/mini.nvim",
  version = "*",
  lazy = false,
  config = function()
    require("mini.comment").setup()
    require("mini.sessions").setup()
    require("mini.pairs").setup()
    require("mini.starter").setup()
    require("mini.jump2d").setup()
  end,
}
