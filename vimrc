set nocompatible              " be iMproved, required

"" means I dont have to bundle exec
set shell=/bin/sh
set shellcmdflag=-ic

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
execute pathogen#infect()

Plugin 'thoughtbot/vim-rspec'

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'roman/golden-ratio'

Plugin 'kien/ctrlp.vim'

Plugin 'JulesWang/css.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jlanzarotta/bufexplorer'

Plugin 'bling/vim-bufferline'

Plugin 'bling/vim-airline'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'tpope/vim-fireplace'

" color schemes
Plugin 'tpope/vim-vividchalk'

Plugin 'tomasr/molokai'
    
Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'

Plugin 'junkblocker/patchreview-vim'
Plugin 'codegram/vim-codereview'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax on

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set laststatus=2

" set path for .swp files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" colours the 80th column
set colorcolumn=80

set cursorline
highlight CursorLine cterm=NONE ctermbg=236
" " Set color of number column on cursorline
highlight CursorLineNR ctermbg=229 ctermfg=white

"" arrows keys remapped to directionally switch windows
nnoremap <up> <C-W>k
nnoremap <down> <C-W>j
nnoremap <left> <C-W>h
nnoremap <right> <C-W>l

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap <CR> :wa<CR>:!!<CR>

"" 
:au FocusLost * :wa

" switching between buffers
nnoremap <SPACE> :bn<CR>
nnoremap <NUL> :bp<CR>

"buffer explorer

" inserting a star?
nnoremap p "0p

"vim/ruby stuff
set nocompatible      " We're running Vim, not Vi!

" map tab to switch split
map <Tab> <C-W>w

" vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>s :call RunNearestSpec()<CR>

"useful Esc remap
inoremap jj <ESC>

"Shift left/right take you to end of line
noremap H ^
noremap L $

"nerdtree shortcut config
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=' '
let g:airline_right_sep=' '

"" ctrlp config
let g:ctrlp_custom_ignore = 'node_modules\|bower_components'

"" insert byebug
map <Leader>b irequire 'byebug'; byebug<ESC><ESC>

"" save on lost focus
:au FocusLost * silent! wa

