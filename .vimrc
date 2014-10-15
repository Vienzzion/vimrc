"ng compatible with good ol' vi
set nocompatible

execute pathogen#infect()
" Turn on that syntax highlighting
syntax enable
set background=dark
colorscheme solarized
set nowrap
set cul
" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Set omnicompletion
set omnifunc=syntaxcomplete#Complete

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
"nmap <silent> ,sv :so $MYVIMRC<cr>

" Highlight Search
set incsearch

" Ignore Case in search
set ignorecase
set smartcase
set hlsearch
" show airline status bar
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Set color
set t_Co=16
set autochdir


" ---------------- Mapping Section-----------------------
" Map moving through tabs
nmap <S-Tab> gt
" Clear highlight search
nmap <leader>q :nohlsearch<cr> 
" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :tabedit $MYVIMRC<cr>
map <C-space> <Esc>

"------------------ NERD Tree Activation automatically vim starts ----------------
"autocmd vimenter * NERDTree
"------------------ Close Vim if only NERDTREE is open--------------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"----------------- Map NERDTree Toggle key ----------------------
map <C-n> :NERDTreeToggle<CR>


"--------------------- Display all errors from syntastic file checker----
let g:syntastic_aggregate_errors = 1
