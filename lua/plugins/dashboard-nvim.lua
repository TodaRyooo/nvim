local logo = [[
      ██╗       █████╗ ███████╗██╗    ██╗██╗    ██╗██╗███╗    ███╗          Z
      ██║      ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║    ██║██║████╗ ████║      Z
      ██║      ███████║  ███╔╝  ╚████╔╝ ██║    ██║██║██╔████╔██║    z
      ██║      ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
      ███████╗██║  ██║███████╗    ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚══════╝╚═╝  ╚═╝╚══════╝    ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝
		]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

return {
	"nvimdev/dashboard-nvim",
	-- lazy = false,
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			header = vim.split(logo, "\n"),
			packages = { enable = true },
			footer = { "✨ Neovimへようこそ！" }, -- "より良いコーディングライフを！"
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
