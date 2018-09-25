set nocompatible                    " Run in true vim mode (no vi, too old)

" colorscheme Black
" colorscheme koehler
" colorscheme desert
" colorscheme srcery
" colorscheme jellybeans
" colorscheme solarized
colorscheme burnttoast256

execute pathogen#infect()
execute pathogen#helptags()
set encoding=utf-8

syntax enable                       " enable syntax processing

filetype plugin indent on
set expandtab ts=2 sw=2 ai

" set different tab stops
nnoremap ,2 :set expandtab ts=2 sw=2 ai<CR>
nnoremap ,3 :set expandtab ts=3 sw=3 ai<CR>
nnoremap ,4 :set expandtab ts=4 sw=4 ai<CR>
nnoremap ,8 :set expandtab ts=8 sw=8 ai<CR>

set nowrap                      " No wrapping of lines, let them go across
                                " one row
set number                      " Show line number in first column
set backspace=indent,eol,start  " allow backspacing over everything in
                                " insert mode

set hlsearch                    " search highlighting
" set ignorecase                " case insensitive search
set noincsearch                 " no incremental searching

" toggle search highlight
nnoremap ,<space> :nohlsearch<CR>

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Jump to the main window.
" autocmd VimEnter * wincmd p
nnoremap ,f :NERDTreeToggle<CR>
nnoremap <silent> ,v :NERDTreeFind<CR>
" let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen=0

set noruler                " don't show the cursor position all the time
set cursorline             " highlight current line
set wildmenu               " visual autocomplete for command menu
set showmatch              " highlight matching [{()}]

set foldenable             " enable folding
set foldlevelstart=10      " open most folds by default
set foldnestmax=10         " 10 nested fold max
set foldmethod=syntax      " fold based on indent level
" space open/closes folds
" nnoremap <space> za

let c_comment_strings=1

" set backup  " keep a backup file (restore to previous version)
" set undofile " keep an undo file (undo changes after closing)
set history=50 " keep 50 lines of command line history
set showcmd     " display incomplete commands

if has('mouse')
  set mouse=a
endif

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=10
set colorcolumn=80

" Prevent vim from clearing the screen on exit
set t_te=
