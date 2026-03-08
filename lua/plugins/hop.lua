local key = require("utils").key

return {
  "smoka7/hop.nvim",
  version = "*",
  lazy = false,
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },

<<<<<<< HEAD
	config = function()
		require("hop").setup()
		key("n", "'j", ":HopLine<cr>", { silent = true })
		key("n", ";j", ":HopLine<cr>", { silent = true })
		key("n", "'h", ":HopChar1<cr>", { silent = true })
		key("n", ";h", ":HopChar1<cr>", { silent = true })
	end,
=======
  config = function()
    require("hop").setup()
    key("n", "'j", ":HopLine<cr>", { silent = true })
    key("n", "]j", ":HopLine<cr>", { silent = true })
    key("n", "'h", ":HopChar1<cr>", { silent = true })
    key("n", "]h", ":HopChar1<cr>", { silent = true })
  end,
>>>>>>> e804727 (260309)
}
