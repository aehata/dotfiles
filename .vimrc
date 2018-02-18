
""""""""""""""""""""
" for clipboad
set clipboard+=unnamed
set clipboard+=autoselect

""""""""""""""""""""
" 文字エンコードをutf-8に固定
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,euc-jp,iso-2022-jp,cp932,utf-16,utf-16le

" コロンセミコロン入れ変え
noremap ; :
noremap : ;

""""""""""""""""""""
set number "行番号表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch "括弧入力時の対応する括弧を表示
set laststatus=2 "ステータスラインを常に表示

""""""""""""""""""""
" for search
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
set nohlsearch "検索結果文字列の非ハイライト表示

""""""""""""""""""""
filetype plugin indent on
filetype indent on
syntax on

set smartindent "オートインデント
" tab関連
set expandtab "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース
" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" cica font
set guifont=Cica:h16
set encoding=utf8
" set ambiwidth=double
" set printfont=Cica:h12
" set ambiwidth=double
set ambiwidth=single

""""""""""""""""""""
" plugins

" airline
" let g:airline_theme = 'molokai'

" NERDTree
" https://kamiya555.github.io/2015/10/14/nerdtree-command/
" let g:NERDTreeShowBookmarks=1 " ブックマークを初期表示
" autocmd vimenter * NERDTree " 起動時にNERDTreeを表示
let NERDTreeShowHidden = 1 " 隠しファイルをデフォルトで表示させる
" ファイル名が指定されてVIMが起動した場合はNERDTreeを表示しない()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" vim-devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " フォルダアイコンの表示をON
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" neocomplete
let g:neocomplete#enable_at_startup = 1

" caw.vim
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)

" ALE(Asynchronous Lint Engine)
let g:ale_sign_column_always = 1   " 左端のシンボルカラムを表示したままにする
let g:ale_lint_on_text_changed = 0 " 保存時のみ実行する
" C-jで次のエラー、C-kで前のエラーに移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim-table-mode
let g:table_mode_corner = '|'

" sonictemplate-vim
let g:sonictemplate_vim_template_dir = ['~/.vim/templates']
" base: 何も書いていないときに呼び出される。
" file: バッファ名とテンプレート名が一致するときに呼び出される。
" snip: なにか呼び出されているとsnipが呼び出される。

" vim-cheatsheet
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

" previm
let g:previm_open_cmd = 'open -a Chrome'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
