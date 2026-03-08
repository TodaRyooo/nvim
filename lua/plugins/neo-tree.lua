local key = require("utils").key

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    -- "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {},

  -- config = function()
  -- 	require("neo-tree").setup({
  -- 		-- 1. ここにカスタムコマンドを定義する
  -- 		commands = {
  -- 			-- "quick_look" という名前でカスタムコマンドを登録
  -- 			quick_look = function(state)
  -- 				-- 現在選択しているノード（ファイルやディレクトリ）の情報を取得
  -- 				local node = state.tree:get_node()
  --
  -- 				-- 拡張子をチェックして画像ファイルか判定
  -- 				if node and node.type == "file" and node.path:match("%.(jpe?g|png|gif|webp)$") then
  -- 					-- 画像プレビューコマンドを実行 (macOSのqlmanageを使用する例)
  -- 					-- このコマンド部分はご自身の環境に合わせて変更してください
  -- 					local cmd = "silent !qlmanage -p " .. node.path .. "<CR>"
  --
  -- 					-- Neovimをブロックしないように非同期でコマンドを実行
  -- 					-- vim.fn.jobstart(cmd, { detach = true })
  -- 					vim.cmd(cmd)
  -- 				else
  -- 					-- 画像ファイルでなければ、デフォルトの動作（ファイルを開く）を実行
  -- 					-- neo-treeの内部コマンドを呼び出す
  -- 					vim.cmd("Neotree filesystem reveal")
  -- 				end
  -- 			end,
  -- 			-- 他のカスタムコマンドもここに追加できる
  -- 		},
  --
  -- 		window = {
  -- 			mappings = {
  -- 				-- 2. スペースキーに上記で定義したコマンド名を割り当て
  -- 				["<space>"] = "quick_look",
  --
  -- 				-- ... 他のキーマッピング ...
  -- 			},
  -- 		},
  -- 	})
  -- end,
}
