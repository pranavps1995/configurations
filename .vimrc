call plug#begin('~/.vim/plugged')

Plug 'https://github.com/rking/ag.vim'

Plug 'https://github.com/sjbach/lusty'

call plug#end()

colorscheme badwolf     " color scheme
syntax enable           " enable syntax processing
set tabstop=4           " number of visual spaces per tab
set shiftwidth=4        " affects what happens when you press >>, << or ==. It also affects how automatic indentation works
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set relativenumber      " turn on relative numbering
set showcmd             " shows the last command entered in bottom right
set cursorline          " highlights current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when need to
set showmatch           " highlight matching parenthesis
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set hidden              " hides the buffer instead of closing it when new window is opened

" leader shortcuts
let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" fold settings

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=3       " 3 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" movement settings

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]
inoremap jk <esc> 

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>

" open ag.vim
nnoremap <leader>a :Ag

