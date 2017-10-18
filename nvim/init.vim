source ~/.config/nvim/plugins.vim

set nocompatible           " not compatible with vi
set autoread               " detect when a file is changed

set history=1000
set textwidth=100

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

if (has('nvim'))
	" show results of substitution as they're happening
	" but don't open a split
	set inccommand=nosplit
endif

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors.

if &term =~ '256color'
	" Disable background color erase
	set t_ut=
endif

" enable 24 bit color support if supported.
set termguicolors
set background=dark
colorscheme gruvbox

set number
set relativenumber

set wrap                     " turn on line wrapping.
set wrapmargin=8             " wrap lines when coming within n characters from side.
set linebreak                " set soft wrapping.
set showbreak=…              " show ellipsis at breaking

set autoindent               " automatically set indent of new line
set smartindent

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab                " insert spaces rather than tabs for <Tab>
set smarttab                 " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4                " the visible width of tabs
set softtabstop=4            " edit as if the tabs are 4 characters wide
set shiftwidth=4             " number of spaces to use for indent and unindent
set shiftround               " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldlevelstart=99
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

set clipboard=unnamed

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

if has('mouse')
	set mouse=a
	" set ttymouse=xterm2
endif

"" -------------------------
""
"" Mappings
""
"" -------------------------

" set a map leader for more key combos
let mapleader = ' '

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
nmap <leader>fs :w<cr>
" quit buffer
nmap <leader>q :q<cr>

" edit nvim config
map <leader>ce :e ~/.config/nvim/init.vim<cr>
" reload nvim config
map <leader>cr :source ~/.config/nvim/init.vim<cr>

" clear highlighted search
noremap <BS> :noh<CR>

" switch between current and last buffer
nmap <leader><TAB> <c-^>

map <silent> <M-h> :call functions#WinMove('h')<cr>
map <silent> <M-j> :call functions#WinMove('j')<cr>
map <silent> <M-k> :call functions#WinMove('k')<cr>
map <silent> <M-l> :call functions#WinMove('l')<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

