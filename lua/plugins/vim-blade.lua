return {
  "jwalton512/vim-blade",

  configs = function()
    require("vim-blade").setup({
      ft = "blade",
    })
  end,
}
