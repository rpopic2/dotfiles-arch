call plug#begin()
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'rpopic2/authentic-gh.vim'
Plug 'rpopic2/nvim-cursorline'
Plug 'preservim/tagbar'
call plug#end()

set clipboard+=unnamedplus
set tabstop=4
set softtabstop=4
set expandtab

set list listchars=trail:·

imap <c-d> <del>
map <space><space> :
map <space>w :w<cr>
map <space>t :tabnew<cr>
map <space>T :tabnew<cr><c-o>
map <space>l :tabonly<cr>
map <space>m :tabmove 
map <space>/ :noh<cr>

