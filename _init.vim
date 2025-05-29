  基本設定

set tabstop=2         " タブ幅を2スペースに設定
syntax on             " シンタックスハイライトを有効化
set number            " 行番号を表示
hi LineNr ctermfg=42 ctermbg=NONE term=bold guifg=#5fd700
set cursorline        " カーソル行をハイライト
hi clear CursorLine   " カーソル行のハイライトをクリア
hi CursorLineNr term=NONE cterm=NONE ctermfg=236 ctermbg=228 guifg=#444444 guibg=#ffffaf
hi CursorLine term=NONE cterm=NONE ctermbg=NONE guibg=NONE
hi Cursor ctermbg=177 ctermfg=239
hi SignColumn ctermbg=NONE
set noswapfile        " スワップファイルを無効化
set incsearch         " インクリメンタルサーチを有効化
set clipboard=unnamedplus " クリップボード設定
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set mouse=a
set so=15
set cmdheight=2
set updatetime=100
set virtualedit=onemore
set smartcase
set showcmd
" set list
" set listchars=tab:>-,space:_
" 折りたたみ状態をファイルに保存
" augroup FoldSave
"     autocmd!
"     autocmd BufWinLeave * mkview
"     autocmd BufWinEnter * silent loadview
" augroup END
" set termguicolors





let g:gitgutter_sign_column_always=1

source .config/nvim/rc/vimrc.plugins
source .config/nvim/rc/vimrc.options
source .config/nvim/rc/vimrc.keymaps


" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
"const [ inoremap, setInoremap ] = useState()inoremap ' ''<LEFT>
" inoremap " ""<LEFT>
" inoremap <C-k> <UP>
" inoremap <C-l> <RIGHT>
" inoremap <C-j> <DOWN>
" inoremap <C-h> <LEFT>
" inoremap <C-w> <BS>
" noremap <space><space>h <C-w>h
" noremap <space><space>j <C-w>j
" noremap <space><space>k <C-w>k
" noremap <space><space>l <C-w>l

" " コマンドのマッピング
" map zx :source ~/.vimrc <CR> 
" map <C-l> gt 
" map <C-h> gT
" map yp :t. <CR>
" nnoremap Y yy
" nnoremap <C-e> :w <CR>

" inoremap <C-s> ,
" inoremap <C-f> .
" inoremap <C-d> <BS>
" inoremap <C-e> <ESC> :w <CR>
" nnoremap <space><space>f :NERDTreeFind
" nnoremap <C-g> <Plug>(coc-references)
" nnoremap <C-w> <Plug>(coc-definition)
" nnoremap <space>h ^
" nnoremap <space>l $
" nnoremap <C-a> gg V G $
" nnoremap <space><space>1 :G status -s <CR>
" nnoremap <space><space>2 :Gdiff <CR>
" nnoremap <space><space>3 :G commit -m ""
" nnoremap <space><space>4 :G log --oneline -20 <CR>
" nnoremap <space><space>5 :G push <CR>

function! SurroundWithBrackets(opening, closing)
  " 選択範囲の始まりと終わりを取得
  let start_pos = getpos("'<")
  let end_pos = getpos("'>")
  
  " 選択範囲を文字列として取得
  let selected_text = getline(start_pos[1])[start_pos[2]-1:end_pos[2]-1]
  
  " 選択範囲を置き換え、前後に括弧を追加
  call setline(start_pos[1], getline(start_pos[1])[0:start_pos[2]-2] . a:opening . selected_text . a:closing . getline(end_pos[1])[end_pos[2]:])
endfunction

" キーマッピング例
xnoremap <silent> ( :<C-u>call SurroundWithBrackets('(', ')')<CR>
xnoremap <silent> [ :<C-u>call SurroundWithBrackets('[', ']')<CR>
xnoremap <silent> { :<C-u>call SurroundWithBrackets('{', '}')<CR>
xnoremap <silent> " :<C-u>call SurroundWithBrackets('"', '"')<CR>
xnoremap <silent> ' :<C-u>call SurroundWithBrackets("'", "'")<CR>

" 現在カーソルが置いてある変数を元にuseStateの宣言を補完する関数
function! CompleteUseState()
  let l:var_name = expand('<cword>')
  let l:setter_name = 'set' . toupper(strpart(l:var_name, 0, 1)) . strpart(l:var_name, 1)
  execute "normal! ciwconst [ " . l:var_name . ", " . l:setter_name . " ] = useState()"
endfunction

" キーマップに関数を割り当てる (例: <leader>u にマッピング)
nnoremap <C-s> :call CompleteUseState()<CR> :w <CR>

" ファイル名をクリップボードにコピーする関数とマッピング
function! YankFileName()
  let file_name = expand("%")
  call setreg('+', file_name)
  echo "File name copied to clipboard: " . file_name
endfunction
" Ctrl-iでファイル名をクリップボードにコピー
nnoremap <C-i> :call YankFileName()<CR>

" " プラグイン設定
" call plug#begin('~/.config/nvim/plugged')
" Plug 'scrooloose/nerdtree'
" Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'sbdchd/neoformat'
" Plug 'APZelos/blamer.nvim'
" Plug 'kamykn/spelunker.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'alvan/vim-closetag'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-fugitive'
" call plug#end()


" " NERDTree 設定
" " Ctrl-tでNERDTreeをトグル
" nnoremap <C-t> :NERDTreeToggle<CR>
" " フォーカスをトグルする関数
" function! ToggleFocus()
"   if exists("t:NERDTreeBufName")
"     if bufname('%') == t:NERDTreeBufName
"       execute 'wincmd p' 
"     else
"       execute ':NERDTreeFocus'  
"     endif
"   else
"   endif
" endfunction

" " NERDTreeTabsを利用するように変更
" nnoremap <space>x :call NERDTreeFindAndHighlight()<CR>
" " Findしつつファイルをハイライトする
" function! NERDTreeFindAndHighlight()
"   NERDTreeFind
"   :setlocal isk+=.
"   normal! 0w
"   exe printf('match IncSearch /\<%s\>/', expand('<cword>'))
"   :setlocal isk-=.
" endfunction
" " 開いてるファイルをハイライトする
" function! NERDTreeHighlight()
"   :call NERDTreeFindAndHighlight()
"   :wincmd p
" endfunction

" " nnoremap tt :call ToggleFocus()<CR>
" let NERDTreeWinSize=36

" " ALE 設定

" let g:ale_linters = {
"     \ 'javascript': ['eslint'],
"     \ 'typescript': ['eslint'],
"     \ 'javascriptreact': ['eslint'],
"     \ 'typescriptreact': ['eslint'],
"     \ 'html': ['eslint'],
"     \ 'css': ['eslint'],
"     \ 'python': ['flake8'],
"     \ 'vim': ['vimlint'],
"     \ 'zsh': ['shellcheck'],
"     \ }
" let g:ale_linters_explicit = 1

" " ALEのエラーや警告メッセージを表示設定
" let g:ale_echo_msg_error_str = 'Error'
" let g:ale_echo_msg_warning_str = 'Warning'
" let g:ale_fix_on_save = 0

" " ALEの色設定
" autocmd VimEnter,SourcePost * :highlight! ALEError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f
" autocmd VimEnter,SourcePost * :highlight! ALEWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700
" autocmd VimEnter,SourcePost * :highlight! ALEVirtualTextError ctermfg=7 ctermbg=160 guifg=#ffffff guibg=#d7005f
" autocmd VimEnter,SourcePost * :highlight! ALEVirtualTextWarning ctermfg=232 ctermbg=154 guifg=#080808 guibg=#afd700
" " nnoremap <C-e> :ALENextWrap<CR> 
" let g:airline#extensions#ale#enabled = 1  " AirlineにALEの情報を表示
" autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.scss,*.json Neoformat

" " 自動保存設定
" autocmd TextChanged,TextChangedI * silent! write  " 編集中のファイルを自動的に保存
" let g:neoformat_enabled_javascript = ['prettier']
" let g:neoformat_enabled_typescript = ['prettier']
" let g:neoformat_try_node_exe = 1  " プロジェクト内の prettier を使用
" autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.scss,*.css Neoformat

" " Blamerの設定
" noremap <space>z :BlamerToggle <CR>

" " spelunkerの設定
" set nospell

" " jsx, tsxのシンタックスハイライト設定
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact


" let g:gitgutter_max_signs = 5000 
" set signcolumn=auto
" let g:gitgutter_override_sign_column_highlight = 0
" hi GitGutterAdd ctermfg=46 guifg=#00ff00
" hi GitGutterChange ctermfg=199 guifg=#ff00ff
" hi GitGutterDelete ctermfg=1 guifg=#ff0000
" hi GitGutterChangeDelete ctermfg=93 guifg=#ffd700

" " closetagの設定
" let g:closetag_filenames = '*.tsx,*.jsx'
" let g:closetag_shortcut = '>'
" let g:closetag_enable_react_fragment = 1

" nnoremap <C-j> :call CocActionAsync('definitionHover') <CR>
" nnoremap <C-g> <Plug>(coc-references)
" nnoremap <space>fj <Plug>(coc-rename)
" autocmd CursorHold * silent call CocActionAsync('highlight')

" " ステータスラインを常に表示
" set laststatus=3

" " キャッシュ用のグローバル変数
" let g:git_branch = ''
" let g:git_diff = ''

" " BufEnterとBufWritePostイベントでGit情報を更新
" autocmd BufEnter,BufWritePost * call UpdateGitInfo()

" function! UpdateGitInfo()
"     let g:git_branch = GetGitBranch()
"     let g:git_diff = GetGitDiff()
" endfunction

" " Gitブランチを取得する関数
" function! GetGitBranch()
"     if system('git rev-parse --is-inside-work-tree 2>/dev/null') =~ 'true'
"         let l:branch = system('git rev-parse --abbrev-ref HEAD 2>/dev/null')
"         return '' . trim(l:branch)
"     endif
"     return ''
" endfunction

" hi DiffAdd guifg=#55ff55 guibg=#afaf87 ctermfg=46 ctermbg=144 cterm=bold
" hi DiffDelete guifg=#ff55aa guibg=#afaf87 ctermfg=204 ctermbg=144 cterm=bold
" hi FileColor guifg=#ffaf00 guibg=#afaf87 ctermfg=166 ctermbg=144
" hi DefaultCterm guibg=#afaf87 ctermbg=144 ctermfg=0

" function! GetGitDiff()
"     if system('git rev-parse --is-inside-work-tree 2>/dev/null') =~ 'true'
"         let l:diff = system('git diff --shortstat 2>/dev/null')
"         if l:diff != ''
"             let l:added = matchstr(l:diff, '\d\+ insertions')
"             let l:deleted = matchstr(l:diff, '\d\+ deletions')

"             " insertions と deletions を削除して数値だけにする
"             let l:added_count = substitute(l:added, ' insertions', '', '')
"             let l:deleted_count = substitute(l:deleted, ' deletions', '', '')

"             " グローバル変数に格納する
"             let g:git_diff_added = l:added_count
"             let g:git_diff_deleted = l:deleted_count

"             return l:added_count . ',' . l:deleted_count
"         endif
"     endif
"     let g:git_diff_added = ''
"     let g:git_diff_deleted = ''
"     return ''
" endfunction

" " カスタムステータスラインの設定
" set statusline=
" set statusline+=%#DefaultCterm#%f\                         " 現在のファイル名
" set statusline+=%#FileColor#%{g:git_branch}\ 
" set statusline+=%#DiffAdd#%{g:git_diff_added}\       " 追加行の数（緑色）
" set statusline+=%#DiffDelete#%{g:git_diff_deleted}%#DefaultCterm#  " 削除行の数（ピンク色）

