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
set shiftwidth=4

set list listchars=trail:·
set colorcolumn=80

imap <c-d> <del>
map <space><space> :
map <space>w :w<cr>
map <space>t :tabnew<cr>
map <space>T :tabnew<cr><c-o>
map <space>l :tabonly<cr>
map <space>m :tabmove 

map <space>f :Files<cr>
map <space>g :GitFiles<cr>

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

aug csharp
        au!
        au BufEnter *.{cs} source ~/.config/nvim/lsp.lua
aug end

hi colorcolum ctermfg=red
