## ノーマルモードのキー操作

**zx** `:source ~/.config/nvim/init.lua<CR>`
- init.luaファイルの再読み込み

**\<C-p\>** `:set laststatus=3<CR>`
- ステータスラインを一つにする

**\<C-e\>**  `:w<CR>`
- ファイルの保存

### ウィンドウの操作

**\<C-l\>**  `gt`
- タブを右へ切り替える

**\<C-h\>**  `gT`
- タブを左へ切り替える

**\<C-q\>**  `<C-^>`
- 一つ前に開いていたファイルと今開いているファイルを切り替える

### ファイラ操作

**\<C-t\>** `:NERDTreeToggle<CR>`
- ファイラを開く

**\<space\>\<space\>f** `:NERDTreeFind `
- ファイルのパスを入力してEnter押下で該当ファイルをファイラで開く

**\<space\>x** `:NERDTreeFind %<CR>`
- 今いるファイルをファイラから探す

### arg系

**\<space\>\<space\>a**  `:argadd %<CR>`
- 現在のファイルをargに追加する

**\<space\>\<space\>d**  `:argdelete %<CR>`
- 現在のファイルをargから削除する

**\<space\>\<space\>s**  `:args `
- Enter押下で、argに追加したファイルたちを確認する

### カーソル/テキスト操作系

**\<space\>h**  `^`
- その行の一番最初の文字までカーソルを移動

**\<space\>l**  `^`
- その行の一番最後までカーソルを移動

**\<C-]\>**  `ggVG`
- ファイル全体の文字を選択

**'l** もしくは **]l** `:HopLine<cr>`
- ジャンプしたい行に表示されている文字を押してカーソルを移動
    - 使用プラグイン: [smoka7/hop.nvim](https://github.com/smoka7/hop.nvim)

**'h** もしくは **]h** `:HopChar1<cr>`
- ジャンプしたい先の文字を一文字入力すると候補が現れる. ジャンプしたい先に表示されている文字を押してカーソルを移動
    - 使用プラグイン: [smoka7/hop.nvim](https://github.com/smoka7/hop.nvim)

コメントアウト系は[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)を参考に...

### Git操作系

**\<space\>gd**  `:Gdiff<CR>`
- 今いるファイルの`git diff`を実行

**\<space\>gs**  `:vert G show `
- git showを行う. コミットハッシュを入力した後Enterで表示

**\<space\>q** `:BlamerToggle<CR>`
- 今いるファイルにgit blameを実行する
    - 使用プラグイン: [APZelos/blamer.nvim](https://github.com/APZelos/blamer.nvim)

### 行に関する操作

**\<Up\>**  `:m .-2<CR>`
- カーソルがある行を一行上に移動させる

**\<Down\>**  `:m .+1<CR>`
- カーソルがある行を一行下に移動させる

**\<C-s\>**  `:lua CompleteUseState()<CR> :w<CR>`
- カーソルが置いてある単語を`useState`の形に変化させる

**\<C-i\>**  `:lua YankFileName()<CR>`
- カーソルが置いてあるファイルのフルパスをクリップボードにコピーする


### ALE(リンター)系
使用プラグイン: [dense-analysis/ale](https://github.com/dense-analysis/ale)

**\<Right\>** `:ALENextWrap <CR>` 
- 次のリンターのエラー/警告まで移動する

**\<Left\>** `:ALEPreviousWrap <CR>`
- 前のリンターのエラー/警告まで移動する

### telescope系

使用プラグイン: [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

**\<space\>\<space\>tt** `:Telescope<CR>`
- telescopeを起動する

**\<space\>\<space\>tf** `:Telescope find_files<CR>`
- 任意のファイル名で検索する

**\<space\>\<space\>tl** `:Telescope live_grep<CR>`
- 任意の文字列で検索する

**\<space\>\<space\>tb** `:Telescope buffers<CR>`
- 起動している最中に開いたファイルたちのバッファ(履歴的なもの)を表示する

**\<space\>\<space\>tk** `:Telescope keymaps<CR>`
- 設定されているキーバインドを表示する

**\<space\>\<space\>tc** `:Telescope commands<CR>`
- コマンドラインモードで打てるコマンドを表示・選択する

### COC系
使用プラグイン: [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)

**\<C-j\>** `:call CocActionAsync('definitionHover')<CR>`
- カーソル下の変数や関数等の定義をポップアップで表示する

**\<C-g\>** `<Plug>(coc-references)`
- カーソル下の変数や関数等がどこで使われているかをウィンドウ下部に表示する

**\<C-k\>** `<Plug>(coc-definition)`
- カーソル下の変数や関数等が定義されている箇所へジャンプする

**\<space\>fj** `<Plug>(coc-rename)`
- 変数名を新しく入力したものに置換する

### nvim-surround系

使用プラグイン: [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

**ys**
- `ys`の後に範囲→囲む文字の順に入力する
```txt
hoge // 単語上にカーソルがあるときにysiwで選択後、(を入力
( hoge )

const hoge, setHoge = useState(false) // hにカーソルがあるときにyst=で=手前まで選択後、[を入力
const [ hoge, setHoge ] = useState(false)

isable // 単語上にカーソルがあるときにysiwdを入力
disabled
```

**ds**
- `ds`の後に削除したい囲み文字を入力する
```txt
( hoge ) // 単語上にカーソルがあるときにds(を入力
hoge

const [ hoge, setHoge ] = useState(false) // []内にカーソルがあるときにds[を入力
const hoge, setHoge = useState(false)
```

**cs**
- `cs`の後に囲み文字→置き換えたい囲み文字の順に入力する
```txt
( hoge ) // 単語上にカーソルがあるときにcs({を入力
{ hoge }
```

### その他

**\<space\>\<space\>g** `:OpenBrowserSearch `
- Google検索を行うための入力欄を出す. キーワード入力後Enterで検索
    - 使用プラグイン: [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim)

**\<space\>\<space\>m** `:CocCommand markdown-preview-enhanced.openPreview<CR>`
- mdファイルをブラウザでリアルタイムプレビューする
    - 使用プラグイン: [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
    - `:CocInstall coc-markdown-preview-enhanced`をする必要あり

**\<space\>\<space\>w** `:ToggleTerm<CR>`
- Neovim内でターミナルを起動させる
    - 使用プラグイン: [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

**\<space\>\<space\>z** `:ZenMode<CR>`
- Zenモードを起動する
    - 使用プラグイン: [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## インサートモードのキー操作

### 簡易スニペット

**\<C-w\>** ` => `
- ` => `を挿入

**\<C-v\>** `{}<Left>`
- `{}`を挿入した後カーソルを左に一つずらす
    - Windowsと衝突するため修正予定

**\<C-b\>** `[]<Left>`
- `[]`を挿入した後カーソルを左に一つずらす

**\<C-n\>** `()<Left>`
- `()`を挿入した後カーソルを左に一つずらす

### 文字入力の再割り当て

**\<C-s\>** `,`
- `,`を挿入

**\<C-d\>** `<BS>`
- 一文字消す

**\<C-f\>** `.`
- `.`を挿入

### カーソル移動

**\<C-h\>** `<Left>`
- カーソルを左に移動

**\<C-j\>** `<Down>`
- カーソルを下に移動

**\<C-k\>** `<Up>`
- カーソルを上に移動

**\<C-l\>** `<Right>`
- カーソルを右に移動

### その他

**\<C-e\>** `<ESC>:w<CR>`
- ファイルを保存しインサートモードを抜ける
