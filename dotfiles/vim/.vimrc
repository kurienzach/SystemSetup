" Initialize vim-plug
call plug#begin()
" Color Schemes
"Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'

" Other plugins
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'moll/vim-bbye'
Plug 'rking/ag.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'digitaltoad/vim-pug'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
" Plug 'terryma/vim-multiple-cursors'
call plug#end()

" Nvim specific
"let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" Some setting for plugins 
filetype plugin on

" Enable mouse in vim
set mouse=a

" Syntax highlighting and completion
syntax on

" Setting the solarized color scheme
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
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
endif
" set t_Co=256
let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
set background=dark
colorscheme onedark
"" in case t_Co alone doesn't work, add this as well:
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"

" Change the background color after 80 column
"let &colorcolumn=join(range(121,999),",")
"highlight ColorColumn ctermbg=235 guibg=#ffffff


" Tab Options
set tabstop=4           " No of visual spaces per tab
set shiftwidth=4        " number of spaces autoindent expands to
set expandtab           " tabs are expanded to spaces
set softtabstop=4       " number of spaces in tab when editing
filetype indent on
set autoindent 
set smartindent
set listchars=tab:▸\ ,eol:¬

" Show 3 lines at the end of the screen while scrolling
set scrolloff=5

" UI Related
set relativenumber
set number
set cursorline          " highlight the current cursor line
set showmatch           " highlight the other matching paranthesis when curson over one
set wildmenu            " visual autocomplete for command mode
set lazyredraw          " redraw only when needed [optimization]

" Buffer related 
set hidden              " all buffers can be hidden do not prompt to save buffer while switching

" Jump to last location of the file when opening
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" More Natural splits 
set splitbelow
set splitright

" Searching 
set incsearch           " search as characters are entered
set showmatch
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase
set smartcase

" Key Remapping
" " jk is escape
inoremap jk <esc>

" Line Bubbling
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Smart way to move between windows
 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h
 map <C-l> <C-W>l

 " Ctrl S to save 
 noremap <silent> <C-S>          :update<CR>
 vnoremap <silent> <C-S>         <C-C>:update<CR>
 inoremap <silent> <C-S>         <C-O>:update<CR>

" Ctrl C V copy paste to system clipboard
vnoremap <C-C> "+y

" Buffer switching
:nnoremap <C-m> :bnext<CR>
:nnoremap <C-n> :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""              PLUGINS          """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline - statusbar plugin
set laststatus=2
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERDTree
map <F10> :NERDTreeToggle<CR>

" indend Guide plugin
let g:indentLine_color_term = 237

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Better buffer closing script keymap
"nmap <C-q> <Plug>Kwbd
:nnoremap <C-q> :Bdelete<CR>

" Vim Multiple Cursors
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_next_key='<C-w>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""       STEPS FOR NEW INTSALL   """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. install sudo pip3 install neovim
" 2. sudo apt-get install apt-get install silversearcher-ag
