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
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/a.vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'blueprint.vim'

call vundle#end()

"set file autodetect
filetype on
"plugin load
filetype plugin on

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
colorschem blueprint
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

"a{
nmap <Leader>ch :A<CR>
nmap <Leader>sch :AS<CR>
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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltisnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"}

