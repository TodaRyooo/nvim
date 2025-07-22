return {
  -- everforest
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    background = "hard",

    config = function()
      require("everforest").setup({})
    end,
  },

  -- cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        italic_comments = true,
        transparent = true,
      })
    end,
  },

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        -- transparent_mode = true,
      })
    end,
  },

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
