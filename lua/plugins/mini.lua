return {
  "echasnovski/mini.nvim",
  version = "*",
  lazy = false,
  config = function()
<<<<<<< HEAD
    require("mini.indentscope").setup()
    require("mini.git").setup()
    require("mini.clue").setup()
    require("mini.comment").setup()
    require("mini.surround").setup()
    require("mini.sessions").setup()
    require("mini.starter").setup()

    -- require("mini.completion").setup()
=======
    -- require("mini.indentscope").setup()
    require("mini.git").setup()
    -- require("mini.clue").setup()
    -- require("mini.comment").setup()
    require("mini.sessions").setup()
    require("mini.pairs").setup()
    require("mini.starter").setup()
>>>>>>> e804727 (260309)
  end,
}
