return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "markdown",
        "markdown_inline",
        "python",
      },
      sync_install = true,
    })
  end,
}
