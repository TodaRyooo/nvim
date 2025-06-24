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

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	require("plugins.nvim-web-devicons"),
	require("plugins.ale"),
	require("plugins.alpha-nvim"),
	require("plugins.blamer"),
	require("plugins.Comment"),
	require("plugins.coc"),
	require("plugins.everforest-nvim"),
	require("plugins.gitsigns"),
	require("plugins.hop"),
	-- require("plugins.indent-blankline"),
	require("plugins.lualine"),
	require("plugins.mini"),
	require("plugins.neoformat"),
	require("plugins.neoscroll"),
	require("plugins.nerdtree"),
	require("plugins.nightfox"),
	require("plugins.noice"),
	-- require("plugins.nvim-lint"),
	require("plugins.nvim-notify"),
	require("plugins.nvim-surround"),
	-- require("plugins.nvim-treesitter"),
	require("plugins.nvim-ts-autotag"),
	require("plugins.open-browser"),
	require("plugins.render-markdown"),
	-- require("plugins.showkeys"),
	require("plugins.smear-cursor"),
	require("plugins.spelunker"),
	require("plugins.telescope"),
	require("plugins.toggleterm"),
	require("plugins.vim-fugitive"),
	require("plugins.zen-mode"),
	require("plugins.pantran"),

	{ "vim-jp/vimdoc-ja" },
	-- require("plugins.dashboard-nvim"),
})

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
		-- vim.cmd('highlight! ALEError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f')
		-- vim.cmd('highlight! ALEWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700')
		vim.cmd("highlight! ALEVirtualTextError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f")
		vim.cmd("highlight! ALEVirtualTextWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700")
	end,
})

-- jsx, tsxのシンタックスハイライト設定
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.jsx,*.tsx",
	callback = function()
		vim.bo.filetype = "typescriptreact"
	end,
})

-- vim.api.nvim_create_autocmd("CursorHold", {
-- 	callback = function()
-- 		vim.cmd("silent call CocActionAsync('highlight')")
-- 	end,
-- })

-- 自動保存設定
-- vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
--   callback = function()
--     vim.cmd('silent! write')
--   end
-- })
--
