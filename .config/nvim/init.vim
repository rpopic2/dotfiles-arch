call plug#begin()
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'rpopic2/authentic-gh.vim'
Plug 'rpopic2/nvim-cursorline'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'
call plug#end()

set clipboard+=unnamedplus
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set list listchars=trail:·
set colorcolumn=81
set updatetime=500

"emacs style mappings
imap <c-d> <del>
imap <c-f> <right>
imap <c-b> <left>

map <space><space> :
map <space>w :w<cr>
map <space>t :tabnew<cr>
map <space>T :tabnew<cr><c-o>
map <space>l :tabonly<cr>
map <space>m :tabmove 

map <space>f :Files<cr>
map <space>g :GitFiles<cr>
map <space>/ :Lines<cr>
map <c-k> :Man<cr>

source ~/.config/nvim/lsp.lua

aug on_lsp_attach
    au!
    "au LspAttach * :au! CursorHoldI * call feedkeys("\<c-x>\<c-o>")
    "au CompleteDone * :pc
    "au LspAttach * imap <c-i> <c-x><c-o>
aug end

hi ColorColumn ctermfg=red ctermbg=none
hi TabLine cterm=none
hi TabLineSel cterm=underline
hi Pmenu ctermbg=grey
hi Comment ctermfg=grey

