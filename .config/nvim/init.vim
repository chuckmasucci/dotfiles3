syntax on
set backspace=indent,eol,start
set background=dark
set clipboard=unnamedplus
set completeopt-=preview
set cmdheight=2
set expandtab
set guifont=FuraCode\ Nerd\ Font:11
set hidden
set ignorecase
set laststatus=2
set termguicolors
set linespace=0
set nobackup
set nolazyredraw
set noshowmode
set nowritebackup
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set relativenumber
set shiftwidth=0
set shortmess+=c
set showcmd
set signcolumn=yes:2
set smartcase
set splitright
set tabstop=2
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set t_8f=\e[38;2;%lu;%lu;%lum
set t_8b=\e[48;2;%lu;%lu;%lum
set t_Co=256
set undodir=$HOME/.vim/undo
set undofile
set wildmenu
set wrap!
set wildignore+=**/node_modules/** 
set updatetime=300
set timeoutlen=300
set ttimeoutlen=10
set iskeyword-=_
filetype plugin indent on
let mapleader = '\'
set cursorline
nnoremap <silent> H :set cursorline!<CR>

" Key mappings
nnoremap G Gzz
nnoremap <silent> <Leader>w :w<cr>
nnoremap <silent> <Leader><space> :noh<cr>
nnoremap <silent> <Leader>b :BW<cr>
nnoremap <silent> <Leader><Leader>b :bufdo bwipeout<cr>
nnoremap <silent> <Leader>q :q<cr>
nnoremap <silent> <Leader><Leader>q :q!<cr>
nnoremap <silent> <C-N> :bnext<CR>
nnoremap <silent> <C-A-N> :bprev<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <leader>o <C-W>o<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <silent> <Leader>s :vsp<cr>
inoremap <F1> <Esc>
noremap <F1> :call MapF1()<CR>
" nnoremap <C-d> <C-d>zz
" nnoremap <C-u> <C-u>zz

" Functions
function! MapF1()
  if &buftype == "help"
    exec 'quit'
  else
    exec 'help'
  endif
endfunction

" Folding
set foldmethod=indent
set viewoptions=cursor,folds,slash,unix
set foldlevel=99

augroup remember_folds
  autocmd!
  autocmd BufWrite * mkview
  autocmd BufRead * silent! loadview
augroup END

augroup remember_marks
  autocmd!
  autocmd BufWrite * MarkSave
  autocmd BufRead * silent! MarkLoad
augroup END

" Plugins
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
 endif
