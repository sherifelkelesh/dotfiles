"###############################################################################
"# Bootstrap
"###############################################################################

" be iMproved, required
set nocompatible

" remove automatic plugin identation (required by Vundle)
filetype off

"###############################################################################
"# Vundle
"###############################################################################

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"###############################################################################
"# Plugins
"###############################################################################

" startup Vundle
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" dracula theme
Plugin 'dracula/vim'

" editor config
Plugin 'editorconfig/editorconfig-vim'

" emmet
Plugin 'mattn/emmet-vim'

" wakatime
Plugin 'wakatime/vim-wakatime'

" close Vundle
call vundle#end()

"###############################################################################
"# General settings
"###############################################################################

" UTF-8 all the things
set encoding=utf-8

" automatic plugin indent
filetype plugin indent on

" show line numbers
set number

" enable tree folding
set foldenable
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" set the title at top of tab to be the filename
set title

" automatic syntax
syntax enable

" tab
set softtabstop=2 shiftwidth=2 noexpandtab

" backspace
set backspace=2

" display hidden whitespace
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·

" display hidden characters by default
set list

" specify files to ignore on wildmenu
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuff

" set highlight for search
set hlsearch

" case-insensitive searching
set ignorecase

" but case-sensitive if expression contains a capital letter
set smartcase

" remove automatic text wrapping
set nowrap

" display status bar
set laststatus=2

" backups are annoying, let file versioning handles this
set nobackup
set nowritebackup

" stop being bothered by Vim swap files
set noswapfile

" enable mouse in all modes because why not
set mouse=a

"###############################################################################
"# Theming
"###############################################################################

" define color scheme
colorscheme dracula

" enable italic text
highlight Comment cterm=italic

" display current line number in bold text
highlight CursorLineNr cterm=bold

" set hidden characters colors to light gray
highlight NonText ctermfg=187 ctermbg=white
highlight SpecialKey ctermfg=187 ctermbg=white
