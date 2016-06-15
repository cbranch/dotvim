if getcwd() ==? "C:\\Windows\\system32"
  chdir ~
endif
let mapleader = ","
execute pathogen#infect()
set nocompatible
set background=light
set cpoptions=aABceFsmq

syntax on
filetype plugin indent on

set encoding=utf-8
set autoindent
set showmode
set showcmd
set autochdir

set backspace=indent,eol,start
set backup
set backupdir=~/.vimtemp/backup
set undodir=~/.vimtemp/undo
set undofile
set undolevels=1000
set undoreload=10000
set clipboard+=unnamed
set directory=~/.vimtemp/tmp
set fileformats=unix,dos,mac
set hidden
set mouse=a
set noerrorbells
set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.jpg,*.gif,*.png
set wildmode=full
set visualbell
set list
set listchars=tab:·\ 
set tags=tags;

nnoremap j gj
nnoremap k gk

" emacs style command line
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
" clear highlight
nmap <leader>q :nohlsearch<CR>
" activate ctrl-p
nmap ; :CtrlPBuffer<CR>
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let html_use_css=1

set ttyfast
set ruler
set incsearch
set hlsearch
set laststatus=2
set lazyredraw
set linespace=0
set nostartofline
set report=0
set scrolloff=10
set showmatch
set sidescrolloff=10
set relativenumber
set undofile
set gdefault
nnoremap <leader><space> :let @/=''<cr>
nnoremap <tab> %
vnoremap <tab> %

set expandtab
set ignorecase
set infercase
set shiftround
set smartcase
set shiftwidth=4
set softtabstop=4
set tabstop=4
set colorcolumn=80
set formatoptions=qrn1 

set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

function SimpleFoldText()
  return getline(v:foldstart).' '
endfunction
set foldtext=SimpleFoldText()

" For arrows in nerdtree
scriptencoding utf-8
let g:NERDTreeDirArrows=1
" sync cwd
let g:NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
nmap <leader>e :NERDTreeToggle<CR>

map <F8> :TagbarToggle<CR>

" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Select just-pasted text
nnoremap <leader>v V`]
" Exit out of insert mode with jj
inoremap jj <ESC>

let g:zenburn_high_Contrast=1
colorscheme zenburn
if has("gui_running")
  set guifont=Consolas:h11
  set guioptions=cerL
  set columns=120
  set textwidth=0
  set lines=30

  syntax match BadSpace /^\t/
  syntax match BadSpace /\s\+$/
  highlight BadSpace guibg=chocolate
endif

" YouCompleteMe
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" TagBar for Go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" quick commands for hex editing using xxd
command HexEdit %!xxd
command HexEnd %!xxd -r
