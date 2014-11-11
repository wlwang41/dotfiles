set nocompatible
set number
syntax on
set cindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set clipboard+=unnamed
set noswapfile
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.html setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab

let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = 'compatible'
let g:Powerline_cache_dir = simplify(expand('<sfile>:p:h') .'/..')
let g:Powerline_cache_enabled = 0
" let g:Powerline_stl_path_style = 'full'
let g:Powerline_colorscheme = 'solarized256'

"<CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion. NO USE with snipmate
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-Y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
" let g:neocomplcache_enable_auto_select = 1

set showmatch
set incsearch
set confirm

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1

""""""""""
" Colors "
""""""""""
if &t_Co == 256
    colorscheme Tomorrow-Night-Bright
    " colorscheme molokai
    highlight Pmenu ctermbg=234 guibg=#606060
    highlight PmenuSel ctermbg=17 guifg=#dddd00
    highlight PmenuSbar ctermbg=17 guibg=#d6d6d6
else
    colorscheme caciano
    highlight Pmenu ctermbg=0
    highlight PmenuSel ctermbg=4
    highlight PmenuSbar ctermbg=7
endif

"字体
set guifontwide=Monaco:h14
set guifont=Monaco:h14

set ignorecase
set incsearch
set ruler

set bsdir=buffer
set autochdir
set background=dark
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set cursorline

syntax on

filetype on
filetype plugin on
filetype plugin indent on

map <F5> :NERDTreeToggle<CR>

nmap <F7> :TagbarToggle<CR>
set shortmess=atl

set smartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2
set hlsearch
set mouse=a
set tags=tags;/

"set textwidth=79
autocmd! bufwritepost .vimrc source ~/.vimrc

"自动补全
filetype plugin indent on
set completeopt=longest,menu

set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

" syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,W404,W801'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript'],
                           \ 'passive_filetypes': ['rst'] }

autocmd ColorScheme * highlight TrailWhitespace ctermbg=red guibg=red
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$/

" startify
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_custom_header = [
    \ '                                __ _._.,._.__',
    \ '                          .o8888888888888888P''',
    \ '                        .d88888888888888888K',
    \ '          ,8            888888888888888888888boo._',
    \ '         :88b           888888888888888888888888888b.',
    \ '          `Y8b          88888888888888888888888888888b.',
    \ '            `Yb.       d8888888888888888888888888888888b',
    \ '              `Yb.___.88888888888888888888888888888888888b',
    \ '                `Y888888888888888888888888888888CG88888P"''',
    \ '                  `88888888888888888888888888888MM88P"''',
    \ ' "Y888K    "Y8P""Y888888888888888888888888oo._""""',
    \ '   88888b    8    8888`Y88888888888888888888888oo.',
    \ '   8"Y8888b  8    8888  ,8888888888888888888888888o,',
    \ '   8  "Y8888b8    8888""Y8`Y8888888888888888888888b.',
    \ '   8    "Y8888    8888   Y  `Y8888888888888888888888',
    \ '   8      "Y88    8888     .d `Y88888888888888888888b',
    \ ' .d8b.      "8  .d8888b..d88P   `Y88888888888888888888',
    \ '                                  `Y88888888888888888b.',
    \ '                   "Y888P""Y8b. "Y888888888888888888888',
    \ '                     888    888   Y888`Y888888888888888',
    \ '                     888   d88P    Y88b `Y8888888888888',
    \ '                     888"Y88K"      Y88b dPY8888888888P',
    \ '                     888  Y88b       Y88dP  `Y88888888b',
    \ '                     888   Y88b       Y8P     `Y8888888',
    \ '                   .d888b.  Y88b.      Y        `Y88888',
    \ '                                                  `Y88K',
    \ '                                                    `Y8',
    \ '                                                      ''',
    \ '',
    \ ]







set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Shougo/neocomplcache'
Bundle 'JavaScript-syntax'
Bundle 'jQuery'
Bundle 'othree/html5.vim'
Bundle 'groenewege/vim-less'
Bundle 'Markdown'
Bundle 'Markdown-syntax'
Bundle "pangloss/vim-javascript"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle "tpope/vim-fugitive"
Bundle "vim-powerline"
Bundle "git://github.com/majutsushi/tagbar"
Bundle "scrooloose/nerdtree"
Bundle "ZenCoding.vim"
Bundle "scrooloose/syntastic"
Bundle "vim-scripts/TabBar"
Bundle "mhinz/vim-startify"
Bundle "guns/xterm-color-table.vim"
Bundle "chriskempson/vim-tomorrow-theme"
Bundle "synmark.vim"
Bundle "browser.vim"
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
