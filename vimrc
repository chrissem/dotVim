" pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" disable vi compatability (emulation of old bugs)
set nocompatible

let mapleader=","

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Toggle the tasklist
map <leader>td <Plug>TaskList

" Run pep8
let g:pep8_map='<leader>8'

" run py.test's
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>


"enable file type detection
filetype on
filetype plugin indent on

"set colorscheme
colorscheme desert

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" turn line numbers on
set number
set cursorline

" highlight matching braces
set showmatch

" python settings
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" source local settings
source ~/.vim/vimrc.local

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" gundo
map <leader>g :GundoToggle<CR>

" makegreen
map <Leader>c <Plug>MakeGreen

" pydiction
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'

