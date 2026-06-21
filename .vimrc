set relativenumber
set number
set scrolloff=8
set guicursor=a:block

" indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" searching
set hlsearch
set incsearch

" Syntax and theme
syntax on
" colorscheme desert

" file mgt
set showmatch

" fzf quick movements for vim
nnoremap <C-p> :Files<CR>
nnoremap <C-h> :History<CR>

" horizontal movements
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Change the terminal position to "bottom"
let g:terminal_drawer_position = "bottom"

call plug#begin()

" Word counter vimplugin
" Plug '~/Desktop/main/linux/wordcounter-vim'
Plug 'tomi3-11/wordcounter-vim'

" Terminal drawer
Plug 'iaalm/terminal-drawer.vim'

" Nerd tree for file management
Plug 'preservim/nerdtree'

" Listing all the plugins here
Plug 'tpope/vim-sensible'

" Auto pairs
Plug 'LunarWatcher/auto-pairs'

" Markdown viewer
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Calendar
Plug 'mattn/calendar-vim'

" fzf
Plug 'junegunn/fzf.vim'

" Dracula plugin
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
