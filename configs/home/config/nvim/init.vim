" Autorun

set number
syntax on
filetype plugin indent on

" indents
set smartindent
set autoindent

" always show status bar
set laststatus=2

" 256 colours
set t_Co=256
set t_ut=

" code like tab/stab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" Plugins

call plug#begin()

" Discord presence
Plug 'andweeb/presence.nvim'

Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'

" Status bar
Plug 'itchyny/lightline.vim'

" Intellisense 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Terminal
Plug 'akinsho/toggleterm.nvim'


nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-r> :NERDTreeFocus<CR>

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-e> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-e> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-e> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

call plug#end()
