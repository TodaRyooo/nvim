local key = require("utils").key

require("keymaps.ikey")
require("keymaps.nkey")

-- 保留で置いておく
key("x", "<space>(", [[:lua SurroundWithBrackets('(', ')')<CR>]], { noremap = true, silent = true })
key("x", "<space>[", [[:lua SurroundWithBrackets('[', ']')<CR>]], { noremap = true, silent = true })
key("x", "<space>{", [[:lua SurroundWithBrackets('{', '}')<CR>]], { noremap = true, silent = true })
key("x", '<space>"', [[:lua SurroundWithBrackets('"', '"')<CR>]], { noremap = true, silent = true })
key("x", "<space>'", [[:lua SurroundWithBrackets("'", "'")<CR>]], { noremap = true, silent = true })
key("x", "<space>`", [[:lua SurroundWithBrackets('`', '`')<CR>]], { noremap = true, silent = true })
key("x", "<space>/", [[:lua SurroundWithBrackets('/* ', ' */')<CR>]], { noremap = true, silent = true })
key("x", "<space><", [[:lua SurroundWithBrackets('<', '>')<CR>]], { noremap = true, silent = true })
