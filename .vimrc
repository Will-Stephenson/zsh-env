" Will's finally not garbage .vimrc
" 05/06/2020

" Standard remaps (to be exported to other vim envs, e.g. Visual Studio)
let mapleader = " "
nnoremap J 5j
nnoremap K 5k
nnoremap <leader>j J

" Pathogen
set nocp
execute pathogen#infect()

" Indentation settings
set autoindent
set expandtab
filetype plugin indent on 
set shiftwidth=4
set smarttab

" Search settings
set hlsearch " enable search highlighting
set smartcase " Auto switches search to case-sensitive when uppercase letter used

" Text settings
set display+=lastline " Show as much of lastline instead of @
syntax enable " Enable syntax highlighting 

" UI settings
set laststatus=2 " Bottom status bar
set ruler " Show cursor position in bottom right
set wildmenu " Tab-complete menu in bottom white bar
set title
"set cursorline " Highlight line in use

" Theme settings
set background=dark
"color monokai_pro

" Misc
set scrolloff=5 " Keep 3 lines below and above the cursor
set history=1000 
set undolevels=1000 " lemme undo
set incsearch
nnoremap ; :
    " makes commands quicker by not needing to hit shift+;

" Disable autocomment
augroup auto_comment
    au!
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Remember last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Toggle Paste mode (to stop weirdly tabbed pastes) with <F12>
set pastetoggle=<F12>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"" Rebinds
" move to beginning/end of line
nnoremap B ^
nnoremap E $ 

" Disabling for compatability with this VIM version
let g:polyglot_disabled = ['graphql']
