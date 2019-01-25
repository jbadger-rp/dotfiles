" Vundle Start
    set nocompatible              " be iMproved, required
    filetype off                  " required

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        " let Vundle manage Vundle, required
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'vim-airline/vim-airline'
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'mhinz/vim-signify'
        Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    call vundle#end()            " required
    filetype plugin indent on    " required
"Vundle Stop

"Vim Signify
    let g:signify_vcs_list = [ 'git' ]
    let g:signify_line_highlight = 1

" Colors
    set background=dark
    colorscheme solarized
"    let g:solarized_termcolors=256
"    let g:solarized_termtrans=1

let mapleader = ","

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    "http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=150
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Make it obvious where 80 characters is
    set textwidth=80
    set colorcolumn=+1
    highlight ColorColumn ctermbg=010001

" Numbers
    set number
    set numberwidth=5

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
    nnoremap <Left> :echoe "Use h"<CR>
    nnoremap <Right> :echoe "Use l"<CR>
    nnoremap <Up> :echoe "Use k"<CR>
    nnoremap <Down> :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
"    set splitbelow
    set splitright

" Softtabs, 2 spaces
    set tabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab

set clipboard=unnamed " for cross-session copy paste

" netrw (file tree)
    "let g:netrw_banner = 0
    let g:netrw_liststyle = 3 " tree view
    "let g:netrw_browse_split = 4
    "let g:netrw_altv = 1
    let g:netrw_winsize = 15

" airline config
let g:airline#extensions#tabline#enabled = 1 " enable buffer list
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
