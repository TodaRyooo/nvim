local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

local plugins_table = {}

table.insert(plugins_table, { require("plugins.nvim-web-devicons") })
table.insert(plugins_table, { require("plugins.ale") })
table.insert(plugins_table, { require("plugins.alpha-nvim") })
table.insert(plugins_table, { require("plugins.blamer") })
table.insert(plugins_table, { require("plugins.Comment") })
table.insert(plugins_table, { require("plugins.coc") })
table.insert(plugins_table, { require("plugins.cyberdream") })
table.insert(plugins_table, { require("plugins.everforest-nvim") })
table.insert(plugins_table, { require("plugins.gitsigns") })
table.insert(plugins_table, { require("plugins.hop") })
table.insert(plugins_table, { require("plugins.lualine") })
table.insert(plugins_table, { require("plugins.mason") })
table.insert(plugins_table, { require("plugins.mason-lspconfig") })
table.insert(plugins_table, { require("plugins.mini") })
table.insert(plugins_table, { require("plugins.neoscroll") })
table.insert(plugins_table, { require("plugins.neo-tree") })
table.insert(plugins_table, { require("plugins.nerdtree") })
table.insert(plugins_table, { require("plugins.nightfox") })
table.insert(plugins_table, { require("plugins.noice") })
table.insert(plugins_table, { require("plugins.none-ls") })
table.insert(plugins_table, { require("plugins.nvim-notify") })
table.insert(plugins_table, { require("plugins.nvim-surround") })
table.insert(plugins_table, { require("plugins.nvim-ts-autotag") })
table.insert(plugins_table, { require("plugins.open-browser") })
table.insert(plugins_table, { require("plugins.render-markdown") })
table.insert(plugins_table, { require("plugins.smear-cursor") })
table.insert(plugins_table, { require("plugins.spelunker") })
table.insert(plugins_table, { require("plugins.telescope") })
table.insert(plugins_table, { require("plugins.toggleterm") })
table.insert(plugins_table, { require("plugins.vim-fugitive") })
table.insert(plugins_table, { require("plugins.vim-table-mode") })
table.insert(plugins_table, { require("plugins.zen-mode") })
table.insert(plugins_table, { require("plugins.pantran") })
table.insert(plugins_table, { "vim-jp/vimdoc-ja" })
-- table.insert(plugins, { require("plugins.neoformat") })
-- require("plugins.indent-blankline"),
-- require("plugins.nvim-lint"),
-- require("plugins.nvim-treesitter"),
-- require("plugins.showkeys"),
-- require("plugins.dashboard-nvim"),

vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins_table)

-- NERDTree
vim.g.Nvimwebdevicons_enable_nerdtree = 1
vim.g.NERDTreeWinSize = 36

-- ALE
vim.g.ale_linters = {
	javascript = { "eslint" },
	typescript = { "eslint" },
	javascriptreact = { "eslint" },
	typescriptreact = { "eslint" },
	html = { "eslint" },
	css = { "eslint" },
	python = { "flake8" },
	vim = { "vimlint" },
	zsh = { "shellcheck" },
}

vim.g.ale_fix_on_save = 0
vim.g.ale_echo_cursor = 0
vim.g.airline_extensions_ale_enabled = 1

vim.api.nvim_create_autocmd({ "VimEnter", "SourcePost" }, {
	callback = function()
		vim.cmd("highlight! ALEVirtualTextError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f")
		vim.cmd("highlight! ALEVirtualTextWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700")
	end,
})
