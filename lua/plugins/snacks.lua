return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	-- keys = {
	-- 	{
	-- 		"<C-t>",
	-- 		function()
	-- 			if Snacks.picker.get({ source = "explorer" })[1] then
	-- 				Snacks.picker.close()
	-- 			else
	-- 				Snacks.explorer({ cwd = vim.fn.expand("%:p:h") })
	-- 			end
	-- 		end,
	-- 		desc = "Toggle Explorer (Current File Dir)",
	-- 	},
	-- },
	opts = {
		-- explorer = {
		-- 	enabled = true,
		-- 	replace_netrw = true,
		-- },
		-- picker = { sources = { explorer = { hidden = true, } } },
		animate = { enabled = true },
	},
}




-- dashboard = {
-- 	sections = {
-- 		{ pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 3, height = 16 },
-- 		{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 3 },
-- 		{ pane = 1, section = "header", position = "left" },
-- 		{ pane = 1, section = "keys", gap = 1, position = "left" }, -- ここでしっかり閉じる
-- 		{ pane = 1, section = "startup", position = "left" },
-- 		{
-- 			pane = 2,
-- 			section = "terminal",
-- 			cmd = 'memory_pressure -Q && top -l 2 | grep -E "^CPU"',
-- 			height = 5,
-- 		},
-- 	},
-- },
