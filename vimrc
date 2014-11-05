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
set shiftwidth=2
set softtabstop=2
set tabstop=4
set colorcolumn=120
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

"F7 WordProcessorOn 
map <F7> :set linebreak<CR>:set display+=lastline<CR>:set wrap<CR>:setlocal spell spelllang=en_gb<CR>
"F8 WordProcessorOff 
map <F8> :set nowrap<CR>:set nospell<CR>

" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Select just-pasted text
nnoremap <leader>v V`]
" Exit out of insert mode with jj
inoremap jj <ESC>

if has("gui_running")
  colorscheme papayawhip
  set guifont=Consolas:h8
  set guioptions=cerL
  set columns=120
  set textwidth=0
  set lines=30

  syntax match BadSpace /^\t/
  syntax match BadSpace /\s\+$/
  highlight BadSpace guibg=chocolate
else
  let g:zenburn_high_Contrast=1
  colorscheme zenburn
endif
