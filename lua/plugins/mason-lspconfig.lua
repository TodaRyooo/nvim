return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      automatic_installation = false,
      ensure_installed = {
        "ts_ls",
        "lua_ls",
        "gopls",
        "cssls",
        "tailwindcss",
        "bashls",
      },
    })

    -- lua
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    })
    vim.lsp.enable("lua_ls")

    -- typescript
    vim.lsp.config("ts_ls", {
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },
      root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
    })
    vim.lsp.enable("ts_ls")

    -- go
    vim.lsp.enable("gopls")

    -- css
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    vim.lsp.config("cssls", {
      capabilities = capabilities,
      filetypes = { "css", "scss" },
      root_markers = { "package.json", ".git" },
    })
    vim.lsp.enable("cssls")

    -- tailwindcss
    vim.lsp.enable("tailwindcss")

    -- bash
    vim.lsp.enable("bashls")

    -- filetype
    vim.filetype.add({
      extension = { ipynb = "python" },
    })

    -- LspAttach
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
        vim.bo[ev.buf].formatexpr = "v:lua.vim.lsp.formatexpr"
      end,
    })
  end,
}
