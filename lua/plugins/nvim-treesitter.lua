return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  configs = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "markdown",
        "markdown_inline",
<<<<<<< HEAD
=======
        "blade",
        "php",
        "python",
>>>>>>> e804727 (260309)
      },
      sync_install = true,
    })
  end,
}
