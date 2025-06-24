return {
	"potamides/pantran.nvim",
	keys = {
		{ "<space>tr", "<cmd>Pantran<CR>", mode = { "n", "v" }, desc = "Show Translate Window" },
	},
	config = function()
		require("pantran").setup({
			default_engine = "google",
			engines = {
				google = {
					fallback = {
						default_source = "en",
						default_target = "ja",
					},
				},
			},
			ui = {
				width_percentage = 0.8,
				height_percentage = 0.8,
			},
			window = {
				title_border = { "( ᐙ ) ", "( ᐕ )    " },
				window_config = { border = "rounded" },
			},
			controls = {
				mappings = {
					edit = {
						n = {
							-- NOTE NOTE 入力言語と出力言語の入れ替え
							["S"] = require("pantran.ui.actions").switch_languages,
							-- NOTE NOTE 翻訳エンジンの切り替え
							["e"] = require("pantran.ui.actions").select_engine,
							-- NOTE 入力言語の切り替え
							["s"] = require("pantran.ui.actions").select_source,
							-- NOTE 出力言語の切り替え
							["t"] = require("pantran.ui.actions").select_target,
							-- NOTE 翻訳した文字をヤンクしてウィンドウを閉じる
							["<C-y>"] = require("pantran.ui.actions").yank_close_translation,
							-- NOTE ヘルプを表示
							["g?"] = require("pantran.ui.actions").help,
							["<C-Q>"] = false,
							["gA"] = false,
							["gS"] = false,
							["gR"] = false,
							["ga"] = false,
							["ge"] = false,
							["gr"] = false,
							["gs"] = false,
							["gt"] = false,
							["gY"] = false,
							["gy"] = false,
						},
						i = {
							-- NOTE 入力言語と出力言語の入れ替え
							["<C-S>"] = require("pantran.ui.actions").switch_languages,
							-- NOTE 翻訳エンジンの切り替え
							["<C-e>"] = require("pantran.ui.actions").select_engine,
							-- NOTE 入力言語の切り替え
							["<C-s>"] = require("pantran.ui.actions").select_source,
							-- NOTE 出力言語の切り替え
							["<C-t>"] = require("pantran.ui.actions").select_target,
							-- NOTE 翻訳した文字をヤンクしてウィンドウを閉じる
							["<C-y>"] = require("pantran.ui.actions").yank_close_translation,
						},
					},
					select = {},
				},
			},
		})
	end,
}
