"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lhahn/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lhahn/.config/nvim/dein')
  call dein#begin('/home/lhahn/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/lhahn/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Syntax
  call dein#add('dag/vim-fish')

  " Colorschemes
  call dein#add('arakashic/nvim-colors-solarized')
  call dein#add('morhetz/gruvbox')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

