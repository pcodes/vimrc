set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" PLUGINS
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-endwise'
Plugin 'majutsushi/tagbar'

" END PLUGINS
call vundle#end()            
filetype plugin indent on

" VISUALS
colorscheme Tomorrow-Night-Eighties
let g:airline_theme='tomorrow'
set number "Show line numbers
:set noshowmode "Hide the second mode (airline already has it)
set laststatus=2 "Always show statusline
let g:airline_powerline_fonts = 1 "Enable powerline fonts

" TAB PAGES
map <F6> :tabn<CR>
map <F5> :vsplit <bar> :wincmd l<bar> :wincmd T<CR>
map <F4> :tabp<CR>

" TAB/SPACE SETTINGS
set tabstop=8 expandtab
" NERDTREE SETTINGS
map <F2> :NERDTreeToggle<CR>

" SYNTASTIC SETTINGS
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set completeopt-=preview

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_c_checkers = ['gcc']
"let g:syntastic_java_checkers = []

" CTAGS TAGBAR
map <F8> :TagbarToggle<CR>
