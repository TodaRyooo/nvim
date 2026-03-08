return {
  "folke/noice.nvim",
  lazy = false,

  config = function()
    require("noice").setup({
      routes = {
        {
          filter = {
            event = "msg_show",
            kind = "",
            find = "written",
          },
          opts = { skip = true },
        },
      },
    })
  end,
}
