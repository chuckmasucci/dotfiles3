call plug#begin('~/.vim/plugged')

" registers
Plug 'junegunn/vim-peekaboo'

" marks
" Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
Plug 'kshenoy/vim-signature'


" editing
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" misc
Plug 'blueyed/vim-diminactive'
Plug 'mhinz/vim-startify'
Plug 'mboughaba/i3config.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'christoomey/vim-tmux-navigator'

" cursor
Plug 'danilamihailov/beacon.nvim'

" motion
Plug 'easymotion/vim-easymotion'

" sessions
Plug 'senderle/restoreview'
Plug 'vim-scripts/delview'
Plug 'tpope/vim-obsession'

" temp
" Plug 'lambdalisue/fern.vim'
" Plug '/usr/local/opt/fzf'
" Plug 'psliwka/vim-smoothie'

" fzf
Plug 'ggvgc/vim-fuzzysearch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" buffers
Plug 'vim-scripts/BufClose.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'

" git
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-conflicted'
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-fugitive'

" programming
Plug 'AndrewRadev/tagalong.vim'
Plug 'ianks/vim-tsx'
Plug 'jmckiern/vim-venter'
Plug 'jparise/vim-graphql'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'liuchengxu/vista.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mlaursen/vim-react-snippets'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug 'puremourning/vimspector'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tcomment_vim'
" Plug 'wfxr/minimap.vim'

" colorschemes
Plug 'aonemd/kuroi.vim'
Plug 'jcorbin/darkula'
Plug 'chuling/ci_dark'
Plug 'tomasiser/vim-code-dark'
Plug 'dunstontc/vim-vscode-theme'
Plug 'romainl/Apprentice'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

call plug#end()

" Statusline
if filereadable(expand("~/.config/nvim/statusline.vim"))
  source ~/.config/nvim/statusline.vim
 endif

" Colorscheme
if filereadable(expand("~/.config/nvim/colorscheme.vim"))
  source ~/.config/nvim/colorscheme.vim
 endif

" vim-grepper
if filereadable(expand("~/.config/nvim/configs/vim-grepper.vim"))
  source ~/.config/nvim/configs/vim-grepper.vim
 endif

" nerdtree
if filereadable(expand("~/.config/nvim/configs/needtree.vim"))
  source ~/.config/nvim/configs/needtree.vim
 endif

" coc.nvim
if filereadable(expand("~/.config/nvim/configs/coc.vim"))
  source ~/.config/nvim/configs/coc.vim
 endif

" vim-jsx-pretty
if filereadable(expand("~/.config/nvim/configs/vim-jsx-pretty.vim"))
  source ~/.config/nvim/configs/vim-jsx-pretty.vim
 endif

" fuzzysearch
if filereadable(expand("~/.config/nvim/configs/fuzzysearch.vim"))
  source ~/.config/nvim/configs/fuzzysearch.vim
 endif

" vim-buftabline
if filereadable(expand("~/.config/nvim/configs/vim-buftabline.vim"))
  source ~/.config/nvim/configs/vim-buftabline.vim
 endif

" vim-prettuer
if filereadable(expand("~/.config/nvim/configs/vim-devicons.vim"))
  source ~/.config/nvim/configs/vim-devicons.vim
 endif

" vim-prettuer
if filereadable(expand("~/.config/nvim/configs/vim-tmux-navigator.vim"))
  source ~/.config/nvim/configs/vim-tmux-navigator.vim
 endif
 
" vim-prettuer
if filereadable(expand("~/.config/nvim/configs/git-blame.vim"))
  source ~/.config/nvim/configs/git-blame.vim
 endif

" beacon.nvim
if filereadable(expand("~/.config/nvim/configs/beacon.vim"))
  source ~/.config/nvim/configs/beacon.vim
 endif

" vim-gitgutter
if filereadable(expand("~/.config/nvim/configs/vim-gitgutter.vim"))
  source ~/.config/nvim/configs/vim-gitgutter.vim
 endif

" vimspector
if filereadable(expand("~/.config/nvim/configs/vimspector.vim"))
  source ~/.config/nvim/configs/vimspector.vim
 endif
 
" minimap
if filereadable(expand("~/.config/nvim/configs/minimap.vim"))
  source ~/.config/nvim/configs/minimap.vim
 endif

" fzf
if filereadable(expand("~/.config/nvim/configs/fzf.vim"))
  source ~/.config/nvim/configs/fzf.vim
 endif

if filereadable(expand("~/.config/nvim/configs/i3config.vim"))
  source ~/.config/nvim/configs/i3config.vim
 endif

" commentary
if filereadable(expand("~/.config/nvim/configs/vim-commentary.vim"))
  source ~/.config/nvim/configs/vim-commentary.vim
 endif

" vista
if filereadable(expand("~/.config/nvim/configs/vista.vim"))
  source ~/.config/nvim/configs/vista.vim
 endif

" easymotion
if filereadable(expand("~/.config/nvim/configs/easymotion.vim"))
  source ~/.config/nvim/configs/easymotion.vim
 endif

" signature
if filereadable(expand("~/.config/nvim/configs/vim-signature.vim"))
  source ~/.config/nvim/configs/vim-signature.vim
 endif

" tagalong
if filereadable(expand("~/.config/nvim/configs/tagalong.vim"))
  source ~/.config/nvim/configs/tagalong.vim
 endif

" venter
if filereadable(expand("~/.config/nvim/configs/venter.vim"))
  source ~/.config/nvim/configs/venter.vim
 endif

" peekaboo
if filereadable(expand("~/.config/nvim/configs/vim-peekaboo.vim"))
  source ~/.config/nvim/configs/vim-peekaboo.vim
 endif
