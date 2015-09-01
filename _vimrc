"set no compatible with Vi
set nocompatible
filetype off
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

"Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

"Plugins
Plugin 'bling/vim-airline' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/a.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'

call vundle#end()

"set file autodetect
filetype on
"plugin load
filetype plugin indent on

"----------Edit options----------
"TAB config
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"wrap in breakat
set linebreak
"search highlight
set hlsearch
set incsearch
"set backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
"set auto indent
set autoindent 
"syntax highlighting coloring
syntax enable
syntax on
"when file is modified ouside of vim, auto read it
set autoread
"folder
set foldmethod=syntax
set nofoldenable
"automatically change window's cwd to file's dir
set autochdir
"<F5> run python
au BufRead *.py map<buffer> <F5> :w<CR>:!python -3 %<CR>
"----------Control----------
"set <Leader>
let mapleader=";"
"map copy and paste into/from clipboard
map <Leader>y "*y<CR>
map <Leader>p "*p<CR>

"----------Display----------
"set window size
set lines=55 columns=100
"command line competion on
set wildmenu
"line number
set number
"line and colum number
set ruler
"no beep
set vb t_vb=
"always show status line
set laststatus=2
"hightlight current line
set cursorline
"set backgournd sytle
set background=dark
"set colorscheme
colorschem solarized
"Remove left-hand scrollbar
set guioptions-=l
set guioptions-=L
"Remove right-hand scrollbar
set guioptions-=r
set guioptions-=R
"Remove menu bar
set guioptions-=m
"Remove toolbar
set guioptions-=T
"scroll off when last 5 lines
set scrolloff=5

"----------Plugins options----------
"airline{
let g:airline#extension#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_modified=1

"}

"NERDTree{
map <Leader>ntt :NERDTreeToggle<CR>
map <Leader>ntf :NERDTreeFind<CR>
let NERDTreeChDirMode=2
"}

"vim-latex{
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='paf, aux'
let g:Tex_ViewRule_pdf='SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'
let g:Tex_CompileRule_pdf='xelatex -synctex=1 -src-specials -interaction=nonstopmode $*'
"}

" ultisnips{
let g:UltiSnipsExpandTrigger="<s-j>"
let g:UltiSnipsJumpForwardTrigger="<s-j>"
let g:UltiSnipsEditSplit="vertical"
"}

" YCM{
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" }

" python-mode{
let g:pymode_python='python3'
let g:pymode_rope=1
let g:pymode_virtualenv=1
let g:pymode_breakporit=1
let g:pymode_breakporit_bind='<leader>b'
let g:pymode_syntax=1
let g:pymode_syntax_all=1
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_folding=0
" }

" indentline{
let g:indentLine_color_term=239
let g:indentLine_color_gui='#A4E57E'
let g:indentLine_color_tty_light=7
let g:indentLine_color_dark=1
let g:indentLine_char='|'
let g:indentLine_enabled=1
" }
