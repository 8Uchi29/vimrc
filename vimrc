"=============
"   vim設定   
"=============
set expandtab

" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" シンタックスハイライト
syntax on
" 行番号を表示
set number

" タブ幅
set tabstop=4
" タブ幅(編集時)
set softtabstop=4
" インデント幅
set shiftwidth=4
" インデントをshiftwidthの倍数に丸める
set shiftround
" 改行時に前の行のインデントを継続する
set autoindent
" □や○文字が崩れる問題を解決...double, 斜体文字を正常に表示...single
set ambiwidth=single
" 現在の行を強調
set cursorline
" compatibleオプションをオフにする
set nocompatible
" 右下に表示される行・列の番号を表示する
set ruler
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" undoファイル出力無効
set noundofile
" バックスペースで各種消せるようにする
set backspace=start,eol,indent
"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 文章の折り返し地点を見やすくする
set showbreak=?
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 補完の際の大文字小文字の区別しない
set infercase
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
set hlsearch
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
" マウスモード有効
set mouse=a
" xtermとscreen対応
set ttymouse=xterm2
" コマンドモードの補完
set wildmenu
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" 現在のモードを表示
set showmode 
" コマンドを画面最下部に表示する
set showcmd
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" スクロールする時に下が見えるようにする
set scrolloff=5

" ファイルを開いたときに最後にカーソルがあった場所に移動する
augroup vimrcEx
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" | endif
augroup END

"-----------
" キー設定
"-----------

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" jjでエスケープ
inoremap <silent> jj <ESC>
" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
"inoremap <silent> っj <ESC>
inoremap <silent>  ｊｊ <ESC>

" escの代わり
imap <C-j> <esc><jis_eissuu>
noremap! <C-j> <esc>

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

"--------------
" colorscheme
"--------------
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

"--------------
" 自動補間
"--------------
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
