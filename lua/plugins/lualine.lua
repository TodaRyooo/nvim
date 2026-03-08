return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,

  config = function()
    local lsp_names = function()
      local clients = {}
      for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
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
      return " " .. table.concat(clients, ", ")
    end

    require("lualine").setup({
      sections = {
        lualine_x = { lsp_names },
      },
      options = {
        theme = "onedark",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })
  end,
}
