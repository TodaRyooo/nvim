local cmd = require("utils").cmd

-- 選択範囲を特定の文字で囲む関数
function SurroundWithBrackets(opening, closing)
  -- 選択範囲の始まりと終わりを取得
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")

  -- 選択範囲の行を取得
  local start_line = start_pos[2]
  local end_line = end_pos[2]

  -- 選択範囲が単一行の場合
  if start_line == end_line then
    local line = vim.fn.getline(start_line)
    local selected_text = line:sub(start_pos[3], end_pos[3])
    local new_line = line:sub(1, start_pos[3] - 1)
        .. opening
        .. selected_text
        .. closing
        .. line:sub(end_pos[3] + 1)
    vim.fn.setline(start_line, new_line)
  else
    -- 複数行の場合
    local lines = vim.fn.getline(start_line, end_line)
    lines[1] = lines[1]:sub(1, start_pos[3] - 1) .. opening .. lines[1]:sub(start_pos[3])
    lines[#lines] = lines[#lines]:sub(1, end_pos[3]) .. closing .. lines[#lines]:sub(end_pos[3] + 1)
    vim.fn.setline(start_line, lines[1])
    for i = 2, #lines - 1 do
      vim.fn.setline(start_line + i - 1, lines[i])
    end
    vim.fn.setline(end_line, lines[#lines])
  end
end

-- カーソル上の単語をuseStateの形に変換
function CompleteUseState()
  local var_name = vim.fn.expand("<cword>")
  local setter_name = "set" .. string.upper(var_name:sub(1, 1)) .. var_name:sub(2)
  vim.api.nvim_feedkeys("^lciwconst [ " .. var_name .. ", " .. setter_name .. " ] = useState()", "n", true)
end

-- ファイル名をコピーする関数
function YankFileName()
  local file_name = vim.fn.expand("%")
  vim.fn.setreg("+", file_name)
  print("ファイル名をコピー\n" .. file_name)
end

-- 開いているファイルの場所をNERDTreeでハイライトする
function NERDTreeFindAndHighlight()
  cmd("NERDTreeFind")

  local original_isk = vim.bo.iskeyword
  vim.bo.iskeyword = original_isk .. ",."

  local word = vim.fn.expand("<cword>")
  cmd(string.format("match IncSearch /\\<%s\\>/", word))

  vim.bo.iskeyword = original_isk
end

-- すべてのハイライトグループの文字色を緑にする関数

function SetAllGreen()
  local groups = vim.fn.getcompletion("", "highlight")

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { fg = "#00FF00" })
  end

  -- vim.api.nvim_set_hl(0, "Normal", { fg = "#00FF00" })
  vim.api.nvim_set_hl(0, "Normal", { fg = "#dadada" })

  cmd("hi! MatchParen cterm=bold gui=bold ctermfg=201 guifg=#ff00ff")
  cmd("hi! Visual cterm=bold gui=bold ctermfg=236 ctermbg=253 guifg=#303030 guibg=#dadada")
  cmd("hi! Boolean  ctermfg=171 guifg=#d75fff")
  cmd("hi! LineNr guifg=#303030")
cmd("hi! CursorLineNr ctermfg=172 guifg=#ee7800")
  cmd("hi! PreProc guifg=#f1ff5e")
end

function HighLightInfo()
  vim.api.nvim_create_user_command("Hlname", function()
    local name = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "name")
    local fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "fg")
    local bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "bg")
    print(name, fg, bg)
  end, {})
end

-- local name = synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")
-- local fg = synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")
-- local bg = synIDattr(synIDtrans(synID(line("."), col("."), 1)), "bg")
