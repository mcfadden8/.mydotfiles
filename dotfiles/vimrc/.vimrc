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

" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{FugitiveStatusline()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\ 

if has('mouse')
  set mouse=a
endif

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
highlight ColorColumn ctermbg=10
set colorcolumn=80

" Prevent vim from clearing the screen on exit
set t_te=

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> ,mw :call MarkWindowSwap()<CR>
nmap <silent> ,pw :call DoWindowSwap()<CR>

" To use (assuming your mapleader is set to \) you would:
" 
"     Move to the window to mark for the swap via ctrl-w movement
"     Type \mw
"     Move to the window you want to swap
"     Type \pw
" 
" Voila! Swapped buffers without screwing up your window layout!

" fugitive git bindings
nnoremap ,ga :Git add %:p<CR><CR>
nnoremap ,gb :Git branch<Space>
nnoremap ,gci :Gcommit -v -q<CR>
nnoremap ,gco :Git checkout<Space>
nnoremap ,gd :Gdiff<CR>
nnoremap ,ge :Gedit<CR>
nnoremap ,gl :silent! Glog<CR>:bot copen<CR>
nnoremap ,gr :Gread<CR>
nnoremap ,grm :Gremove<CR>
nnoremap ,gs :Gstatus<CR>
nnoremap ,gt :Gcommit -v -q %:p<CR>
nnoremap ,gm :Gmove<Space>
nnoremap ,gp :Ggrep<Space>
nnoremap ,gpl :Dispatch! git pull<CR>
nnoremap ,gps :Dispatch! git push<CR>
nnoremap ,gw :Gwrite<CR><CR>
