


" force you to not use arrow keys
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

nnoremap ; :

" can move through columns of wrapped lines
nnoremap j gj
nnoremap k gk

" allow saving a file not opened using sudo
cmap w!! w !sudo tee % >/dev/null

" turn on mouse
set mouse=a

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2

" spaces instead of tabs
set expandtab

" guess indentation
set autoindent

" backspace deletes line breaks and stuff
set backspace=indent,eol,start

" toggle line numbers
nmap <C-N> :set number! number? <CR>

" highlight the searchterms
set hlsearch


" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase

" ignore case while searching if all chars in lowercase
set smartcase

" allow easy undo after cut during insert mode
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" history
set history=500

" 1000 undo levels
set undolevels=1000

" show a ruler
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

filetype plugin indent on
" syntax highlight
syntax on

set splitbelow
set splitright

" change mapleader from \ to ,
let mapleader=","

" quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>:nohl<CR>

" leader shortcuts
nmap <silent> <leader><leader> :
nmap <silent> <leader>pt :set paste! paste?<CR>
nmap <silent> <leader>sma :set mouse=a<CR>
nmap <silent> <leader>smo :set mouse=<CR>
nmap <silent> <leader>lcd :lcd %:p:h<CR>
nmap <silent> <leader>gcd :cd %:p:h<CR>

" unhighlight seach terms
nmap <silent> <leader>nh :nohlsearch<CR>

" highlight whitespaces
nmap <silent> <leader>sl :set list! list?<CR>


" hide current buffer instead of closing when opening a file
set hidden

if filereadable(".vimrca")
  source .vimrca
endif
