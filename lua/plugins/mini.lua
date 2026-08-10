local key = require("utils").key

return {
  "echasnovski/mini.nvim",
  version = "*",
  lazy = false,
  config = function()
    -- require("mini.git").setup()
    require("mini.comment").setup()
    require("mini.sessions").setup()
    require("mini.pairs").setup()
    require("mini.starter").setup()
    require("mini.jump2d").setup()

    key("n", "<leader>j", function()
      require("mini.jump2d").start()
    end, { desc = "Jump2d" })
  end,
}
