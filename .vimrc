" ----------------
" --   Vundle   --
" ----------------

set nocompatible              " be iMproved, required
filetype off                  " detecting file type which triggers Filetype event for syntax highlighting etc.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ----------------
" --    Term    --
" ----------------

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif

syntax on
colorscheme onedark

" ----------------
" -- Basic Vim  --
" ----------------

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes
set encoding=utf-8                  " The encoding displayed.
set fileencoding=utf-8              " The encoding written to file.
set nowrap
set number
set backspace=indent,eol,start
set hlsearch
set expandtab                       " Use spaces instead of tabs
set smarttab
set shiftwidth=2                    " Number of spaces to use for each step of (auto)indent
set tabstop=2                       " Number of spaces that a <Tab> in the file counts for
set ai                              " Auto indent
set si                              " Smart indent
set mouse=a 
imap jk <Esc>

" Changing cursor during input mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Copy from vim to clipboard"
set clipboard=unnamedplus 

" Paste to vim from clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

