# 🛠 TodaRyooo / nvim

> ホームポジションから手を離さない。シンプルに、速く。

個人のNeovim設定ファイルです。  
「キーボードから手を離さず、IDEに頼らず、でも快適に開発できる」をコンセプトに組み上げています。

---

## 💡 思想・こだわり

### ホームポジション至上主義

マウス・矢印キー・遠いキーへの移動を極力ゼロにする。  
`<C-h/j/k/l>` によるカーソル移動、hop.nvim による画面内ジャンプ、すべてはホームポジションを守るための設計です。

### シンプル・軽量を重視

「あれば便利」なプラグインより「なくては困る」プラグインだけを入れる。  
設定ファイルは読みやすく、必要最小限に保ちます。  
不要な組み込みプラグイン（gzip・tohtml・tutor など）は無効化しています。

---

## 📦 使用プラグイン

### コア

| プラグイン | 用途 |
|---|---|
| [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | プラグイン管理 |
| [vim-jp/vimdoc-ja](https://github.com/vim-jp/vimdoc-ja) | 日本語ヘルプ |

### LSP / 補完 / フォーマット

| プラグイン | 用途 |
|---|---|
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP クライアント設定 |
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | LSP サーバー管理 |
| [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | mason と lspconfig の連携 |
| [nvimdev/lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim) | LSP UI（定義ジャンプ・rename・hover 等） |
| [saghen/blink.cmp](https://github.com/saghen/blink.cmp) | 補完エンジン |
| [nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) | フォーマッター・リンター統合（prettier / stylua / eslint_d 等） |

### シンタックス / 言語サポート

| プラグイン | 用途 |
|---|---|
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | シンタックスハイライト |
| [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | HTML/JSX タグの自動補完・リネーム |

### ファイル操作 / 検索

| プラグイン | 用途 |
|---|---|
| [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | ファイラ |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | ファジーファインダー |
| [telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim) | live grep の引数拡張 |
| [brianhuster/live-preview.nvim](https://github.com/brianhuster/live-preview.nvim) | ブラウザのライブプレビュー |

### Git

| プラグイン | 用途 |
|---|---|
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | diff・blame・show 等の Git 操作 |
| [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) | ファイル単位の git log / diff 表示 |
| [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | lazygit の Neovim 統合 |
| [echasnovski/mini.git](https://github.com/echasnovski/mini.nvim) | Git 操作の補助（mini.nvim） |

### テキスト編集

| プラグイン | 用途 |
|---|---|
| [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround) | テキストの囲み操作 |
| [echasnovski/mini.comment](https://github.com/echasnovski/mini.nvim) | コメントアウト |
| [echasnovski/mini.pairs](https://github.com/echasnovski/mini.nvim) | 括弧の自動補完 |
| [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) | Markdown テーブル編集 |

### ジャンプ・移動

| プラグイン | 用途 |
|---|---|
| [smoka7/hop.nvim](https://github.com/smoka7/hop.nvim) | 画面内高速ジャンプ |

### UI

| プラグイン | 用途 |
|---|---|
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | ステータスライン（アクティブ LSP 表示あり） |
| [b0o/incline.nvim](https://github.com/b0o/incline.nvim) | ウィンドウごとのファイル名表示 |
| [folke/noice.nvim](https://github.com/folke/noice.nvim) | コマンドライン・通知 UI の刷新 |
| [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) | 通知のポップアップ表示 |
| [rachartier/tiny-inline-diagnostic.nvim](https://github.com/rachartier/tiny-inline-diagnostic.nvim) | インライン診断メッセージ |
| [sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) | カーソルのスムーズ移動アニメーション |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | アイコン表示 |

### カラースキーム

| プラグイン | 備考 |
|---|---|
| [scottmckendry/cyberdream.nvim](https://github.com/scottmckendry/cyberdream.nvim) | **デフォルト**（透過・イタリックコメント有効） |
| [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) | 候補 |
| [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | 候補 |
| [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim) | 候補（warmer スタイル） |

### その他

| プラグイン | 用途 |
|---|---|
| [echasnovski/mini.sessions](https://github.com/echasnovski/mini.nvim) | セッション管理 |
| [echasnovski/mini.starter](https://github.com/echasnovski/mini.nvim) | スタート画面 |
| [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) | DB クライアント UI |
| [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim) | ブラウザ検索 |

---

## ⌨️ キーバインド

### ノーマルモード

#### 基本操作

| キー | 動作 |
|---|---|
| `zx` | `init.lua` を再読み込み |
| `<C-e>` | ファイルを保存 |
| `<C-p>` | 直前に開いていたファイルと切り替え |
| `gmks` | セッションを名前をつけて保存（mini.sessions） |

#### ウィンドウ・タブ

| キー | 動作 |
|---|---|
| `<C-l>` | タブを右へ切り替え |
| `<C-h>` | タブを左へ切り替え |
| `<Left>` | ウィンドウ幅を広げる |
| `<Right>` | ウィンドウ幅を縮める |
| `<Up>` | ウィンドウ高さを広げる |
| `<Down>` | ウィンドウ高さを縮める |

#### ファイラ (neo-tree)

| キー | 動作 |
|---|---|
| `<C-t>` | ファイラを開閉 |
| `<Space>x` | 現在のファイルをファイラで表示 |

#### カーソル・ジャンプ

| キー | 動作 |
|---|---|
| `<Space>h` | 行頭の文字へ移動 |
| `<Space>l` | 行末へ移動 |
| `<C-w>y` | ファイル全体を選択 |
| `'j` / `]j` | hop: 行ジャンプ |
| `'h` / `]h` | hop: 1文字入力でジャンプ |

#### arg 管理

| キー | 動作 |
|---|---|
| `<Space><Space>a` | 現在のファイルを arg に追加 |
| `<Space><Space>d` | 現在のファイルを arg から削除 |
| `<Space><Space>s` | arg リストを確認 |

#### Git

| キー | 動作 |
|---|---|
| `<Space>gd` | `git diff` を表示（gitsigns） |
| `<Space>gb` | `git blame` を表示（gitsigns） |
| `<Space>gs` | `git show`（コミットハッシュ入力）（gitsigns） |
| `<Space>q` | 行単位の blame を toggle（gitsigns） |
| `dv` | 現在ファイルの git log / diff を表示（diffview） |
| `glg` | lazygit を起動 |

#### LSP (lspsaga)

| キー | 動作 |
|---|---|
| `K` | ドキュメントを表示 |
| `<C-j>` | 定義をポップアップ表示 |
| `<C-k>` | 定義箇所へジャンプ |
| `grr` | 参照箇所を一覧表示 |
| `grn` | 変数名をリネーム |
| `]d` / `[d` | 次／前のエラーへジャンプ |
| `<Space>ca` | コードアクションを実行 |
| `<Space>e` | フォーマット（none-ls） |
| `<Space><Space>w` | Neovim 内ターミナルを起動 |

#### Telescope

| キー | 動作 |
|---|---|
| `<Space><Space>tt` | Telescope 起動 |
| `<Space><Space>tf` | ファイル名で検索 |
| `<Space><Space>tl` | 文字列で検索（live grep） |
| `<Space><Space>tb` | バッファ一覧 |
| `<Space><Space>tk` | キーマップ一覧 |
| `<Space><Space>tc` | コマンド一覧 |

#### その他

| キー | 動作 |
|---|---|
| `<C-s>` | カーソル下の単語を `useState` に変換して保存 |
| `<C-i>` | 現在ファイルのフルパスをクリップボードにコピー |
| `<Space><Space>g` | Google 検索 |

---

### インサートモード

#### カーソル移動

| キー | 動作 |
|---|---|
| `<C-h>` | ← |
| `<C-j>` | ↓ |
| `<C-k>` | ↑ |
| `<C-l>` | → |

#### 簡易スニペット

| キー | 動作 |
|---|---|
| `<C-w>` | ` => ` を挿入 |
| `<C-n>` | `()` を挿入してカーソルを中へ |

#### 文字の再割り当て

| キー | 動作 |
|---|---|
| `<C-s>` | `,` を挿入 |
| `<C-f>` | `.` を挿入 |
| `<C-e>` | 保存してノーマルモードへ |

---

### nvim-surround の使い方

#### `ys`（囲む）

```
# ysiwで単語を選択 → (を入力
hoge  →  ( hoge )

# yst=で=手前まで選択 → [を入力
hoge, setHoge = useState(false)  →  [ hoge, setHoge ] = useState(false)

# ysiwdで単語を選択
isable  →  disabled
```

#### `ds`（囲みを削除）

```
( hoge )  →  ds(  →  hoge
const [ hoge, setHoge ] = useState(false)  →  ds[  →  const hoge, setHoge = useState(false)
```

#### `cs`（囲みを置換）

```
( hoge )  →  cs({  →  { hoge }
```

---

## 🔧 対応 LSP サーバー

| 言語 | サーバー |
|---|---|
| TypeScript / JavaScript | ts_ls |
| Lua | lua_ls |
| Go | gopls |
| CSS / SCSS | cssls |
| Tailwind CSS | tailwindcss |
| Bash | bashls |

フォーマッター：prettier / stylua / stylelint / shfmt / gofmt  
リンター：eslint_d

---

## 🚀 セットアップ

```bash
git clone https://github.com/TodaRyooo/nvim.git ~/.config/nvim
nvim
```

初回起動時に lazy.nvim が自動でプラグインをインストールします。

---

## 📁 ディレクトリ構成

```
~/.config/nvim/
├── init.lua              # エントリーポイント
├── lazy-lock.json        # プラグインバージョンのロックファイル
├── .luarc.json           # Lua LSP 設定
└── lua/
    ├── keymaps/
    │   ├── keymaps.lua   # キーマップのエントリーポイント
    │   ├── nkey.lua      # ノーマルモードのキーマップ
    │   └── ikey.lua      # インサートモードのキーマップ
    ├── plugins/          # プラグインごとの設定ファイル
    ├── options.lua       # Neovim 基本設定
    ├── plugin.lua        # lazy.nvim の初期化
    ├── scripts.lua       # カスタム Lua 関数
    └── utils.lua         # ユーティリティ（vim.keymap.set 等のラッパー）
```
