-- 選択範囲を特定の文字で囲む関数
function SurroundWithBrackets(opening, closing)
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  local start_line = start_pos[2]
  local end_line = end_pos[2]

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

-- ハイライトグループ情報表示コマンド
function HighLightInfo()
  vim.api.nvim_create_user_command("Hlname", function()
    local name = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "name")
    local fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "fg")
    local bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "bg")
    print(name, fg, bg)
  end, {})
end
