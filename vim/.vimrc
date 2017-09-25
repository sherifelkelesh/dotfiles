"###############################################################################
"# Bootstrap
"###############################################################################

" be iMproved, required
set nocompatible

" Remove automatic plugin identation (required by Vundle)
filetype off

"###############################################################################
"# Vundle
"###############################################################################

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"###############################################################################
"# Plugins
"###############################################################################

" Startup Vundle
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Dracula theme
Plugin 'dracula/vim'

" Editor config
Plugin 'editorconfig/editorconfig-vim'

" Emmet
Plugin 'mattn/emmet-vim'

" Wakatime
Plugin 'wakatime/vim-wakatime'

" Close Vundle
call vundle#end()

"###############################################################################
"# General settings
"###############################################################################

" UTF-8 all the things
set encoding=utf-8

" Automatic plugin indent
filetype plugin indent on

" Show line numbers
set number

" Enable tree folding
set foldenable
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Set the title at top of tab to be the filename
set title

" Automatic syntax
syntax enable

" Tab
set softtabstop=2 shiftwidth=2 noexpandtab

" Backspace
set backspace=2

" Display hidden whitespace
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·

" Display hidden characters by default
set list

" Specify files to ignore on wildmenu
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.sw?
set wildignore+=.DS_Store
set wildignore+=node_modules,bower_components,elm-stuff

" Set highlight for search
set hlsearch

" Case-insensitive searching
set ignorecase

" But case-sensitive if expression contains a capital letter
set smartcase

" Remove automatic text wrapping
set nowrap

" Display status bar
set laststatus=2

" Backups are annoying, let file versioning handles this
set nobackup
set nowritebackup

" Stop being bothered by Vim swap files
set noswapfile

" Enable mouse in all modes because why not
set mouse=a

"###############################################################################
"# Theming
"###############################################################################

" Define color scheme
colorscheme dracula

" Enable italic text
highlight Comment cterm=italic

" Display current line number in bold text
highlight CursorLineNr cterm=bold

" Set hidden characters colors to light gray
" highlight NonText ctermfg=187 ctermbg=white
" highlight SpecialKey ctermfg=187 ctermbg=white
