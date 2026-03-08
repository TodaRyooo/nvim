local key = require("utils").key

return { "sindrets/diffview.nvim",

config = function ()
  require("diffview").setup({
			key("n", "dv", ":DiffviewFileHistory %<CR>", { noremap = true, silent = true }),
  })
end

}
