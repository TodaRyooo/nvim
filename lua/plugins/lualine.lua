return {
  "nvim-lualine/lualine.nvim",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },
  lazy = false,

  config = function()
    require("lualine").setup({
      options = {
        -- theme = "codedark",
        theme = "nightfly",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })
  end,
}
