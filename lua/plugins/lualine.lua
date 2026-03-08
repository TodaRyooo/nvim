return {
  "nvim-lualine/lualine.nvim",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },
  lazy = false,

  config = function()
    local lsp_names = function()
      local clients = {}
      for _, client in ipairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
        if client.name == "null-ls" then
          local sources = {}
          for _, source in ipairs(require("null-ls.sources").get_available(vim.bo.filetype)) do
            table.insert(sources, source.name)
          end
          table.insert(clients, "null-ls(" .. table.concat(sources, ", ") .. ")")
        else
          table.insert(clients, client.name)
        end
      end
      return " " .. table.concat(clients, ", ")
    end
    require("lualine").setup({
      sections = {
        lualine_x = { lsp_names },
      },
      options = {
        -- theme = "codedark",
        -- theme = "nightfly",
        -- theme = "cyberdream",
        -- theme = "everforest",
        -- theme = "tokyonight",
        -- theme = "gruvbox",
        -- theme = "murphy",
        theme = "onedark",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })
  end,
}
