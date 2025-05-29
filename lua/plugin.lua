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
	require("plugins.everforest-nvim"),
	require("plugins.lualine"),
	require("plugins.smear-cursor"),
	require("plugins.coc"),
	require("plugins.neoformat"),
	require("plugins.Comment"),
	require("plugins.vim-fugitive"),
	require("plugins.spelunker"),
	require("plugins.noice"),
	require("plugins.nvim-notify"),
	require("plugins.telescope"),
	require("plugins.neoscroll"),
	require("plugins.open-browser"),
	require("plugins.nvim-treesitter"),
	require("plugins.neo-tree"),
	require("plugins.toggleterm"),
	require("plugins.hop"),
	-- require("plugins.nvim-lint"),
	require("plugins.blamer"),
	require("plugins.vim-gitgutter"),
	require("plugins.gitsigns"),
	"scrooloose/nerdtree",
	"dense-analysis/ale",
	"jamestthompson3/sort-import.nvim",

	-- "lewis6991/gitsigns.nvim",
	-- "APZelos/blamer.nvim",
	-- 'alvan/vim-closetag',
	-- 'tpope/vim-commentary',
	-- "olimorris/onedarkpro.nvim",
	-- { "scottmckendry/cyberdream.nvim",
	--   lazy = false,
	--   priority = 1000,
	-- },
	-- {
	-- 	"nvim-telescope/telescope.nvim",
	-- 	tag = "0.1.8",
	-- 	dependencies = {
	-- 		{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
	-- 	},
	-- },
	-- {
	-- 	"maxmx03/fluoromachine.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local fm = require("fluoromachine")
	-- 		fm.setup({
	-- 			glow = true,
	-- 			theme = "fluoromachine",
	-- 			-- transparent = true,
	-- 		})
	-- 		vim.cmd.colorscheme("fluoromachine")
	-- 	end,
	-- },
	-- "rebelot/kanagawa.nvim",
	--{
	--  "lukas-reineke/indent-blankline.nvim",
	--  main = "ibl",
	--  ---@module "ibl"
	--  ---@type ibl.config
	--  opts = {},
	--},

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	--{'maxmx03/solarized.nvim',
	--lazy = false,
	--priority = 1000,
	-----@type solarized.config
	--opts = {},
	--config = function(_, opts)
	--  vim.o.termguicolors = true
	--  vim.o.background = 'dark'
	--  require('solarized').setup(opts)
	--  vim.cmd.colorscheme 'solarized'
	--end
	--}

	-- {"nvim-treesitter/nvim-treesitter", TSUpdate = true},
	-- {"windwp/nvim-ts-autotag"}
})

-- NERDTree
vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
-- vim.keymap.set("n", "<space>x", function()
-- 	vim.cmd("NERDTreeFind")
--
-- 	local original_isk = vim.bo.iskeyword
-- 	vim.bo.iskeyword = original_isk .. ",."
--
-- 	local word = vim.fn.expand("<cword>")
-- 	vim.cmd(string.format("match IncSearch /\\<%s\\>/", word))
--
-- 	vim.bo.iskeyword = original_isk
-- end)
-- vim.g.Nvimwebdevicons_enable_nerdtree = 1
-- vim.g.NERDTreeWinSize = 36

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
vim.g.ale_linters_explicit = 1
vim.g.ale_echo_msg_error_str = "Error"
vim.g.ale_echo_msg_warning_str = "Warning"
vim.g.ale_fix_on_save = 0

vim.api.nvim_create_autocmd({ "VimEnter", "SourcePost" }, {
	callback = function()
		-- vim.cmd('highlight! ALEError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f')
		-- vim.cmd('highlight! ALEWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700')
		vim.cmd("highlight! ALEVirtualTextError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f")
		vim.cmd("highlight! ALEVirtualTextWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700")
	end,
})

vim.g.airline_extensions_ale_enabled = 1
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*.js,*.ts,*.jsx,*.tsx,*.scss,*.json,*.lua",
-- 	callback = function()
-- 		vim.cmd("Neoformat")
-- 	end,
-- })

-- 自動保存設定
-- vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
--   callback = function()
--     vim.cmd('silent! write')
--   end
-- })
--

-- vim.g.neoformat_enabled_javascript = { "prettier" }
-- vim.g.neoformat_enabled_typescript = { "prettier" }
-- vim.g.neoformat_enabled_lua = { "stylua" }
-- vim.g.neoformat_enabled_sh = { "sh" }
-- vim.g.neoformat_enabled_json = { "json" }
-- vim.g.neoformat_try_node_exe = 1

-- Blamerの設定
vim.keymap.set("n", "<space>z", ":BlamerToggle<CR>")

-- spelunkerの設定
-- vim.opt.spell = false

-- jsx, tsxのシンタックスハイライト設定
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.tsx,*.jsx",
	callback = function()
		vim.bo.filetype = "typescriptreact"
	end,
})

-- -- gitgutterの設定
-- vim.g.gitgutter_max_signs = 5000
-- vim.opt.signcolumn = "auto"
-- vim.g.gitgutter_override_sign_column_highlight = 0

-- closetagの設定
vim.g.closetag_filenames = "*.tsx,*.jsx"
vim.g.closetag_shortcut = ">"
vim.g.closetag_enable_react_fragment = 1

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.cmd("silent call CocActionAsync('highlight')")
	end,
})

-- require("nvim-tree").setup()
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
--

-- require("notify").setup({
-- 	background_colour = "#000000",
-- })

-- require("noice").setup({
-- 	routes = {
-- 		{
-- 			filter = {
-- 				event = "msg_show",
-- 				kind = "",
-- 				find = "written",
-- 			},
-- 			opts = { skip = true },
-- 		},
-- 	},
-- })
-- local notify = require 'notify'
-- vim.notify = notify

-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = "CyberdreamToggleMode",
-- 	callback = function(event)
-- 		print("Switched to " .. event.data .. " mode!")
-- 	end,
-- })

-- require("lualine").setup({
-- 	options = {
-- 		theme = "codedark",
-- 	},
-- })

-- cyberdream
-- require("cyberdream").setup({
--   transparent = true,
--   -- theme = {
--   --   variant = "light",
--   -- },
--   extensions = {
--     notify = true
--   }
-- })

-- onedarkpro
-- require("onedarkpro").setup({
-- 	styles = {
-- 		types = "NONE",
-- 		methods = "bold",
-- 		numbers = "NONE",
-- 		strings = "NONE",
-- 		comments = "NONE",
-- 		keywords = "bold",
-- 		constants = "NONE",
-- 		functions = "bold",
-- 		operators = "NONE",
-- 		variables = "NONE",
-- 		parameters = "bold",
-- 		conditionals = "bold",
-- 		virtual_text = "NONE",
-- 	},
-- })

require("gitsigns").setup()
-- require("neoscroll").setup({
-- 	duration_multiplier = 0.2,
-- })

require("sort-import").setup()

-- Telescope
-- use {
--   "nvim-telescope/telescope.nvim",
--   dependencies = {
--     {
--         "nvim-telescope/telescope-live-grep-args.nvim" ,
--         -- This will not install any breaking changes.
--         -- For major updates, this must be adjusted manually.
--         version = "^1.0.0",
--     },
--   },
--   config = function()
--     local telescope = require("telescope")

--     -- first setup telescope
--     telescope.setup({
--         -- your config
--     })

--     -- then load the extension
--     telescope.load_extension("live_grep_args")
--   end
-- }

-- require('hlchunk').setup({
--     chunk = {
--         enable = true
--     },
--     blank = {
--       enable = true
--     }
-- })

-- require("Comment").setup()

-- require("lazy").setup({
-- 	"neanias/everforest-nvim",
-- 	version = false,
-- 	lazy = false,
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	-- Optional; default configuration will be used if setup isn't called.
-- 	config = function()
-- 		require("everforest").setup({
-- 			-- Your config here
-- 		})
-- 	end,
-- })

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	callback = function()
-- 		require("lint").try_lint()
-- 	end,
-- })
