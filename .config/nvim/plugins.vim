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
" Plug 'hrsh7th/nvim-compe'
" Plug 'ryanoasis/vim-devicons'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'

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
" Plug 'ap/vim-buftabline'

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
Plug 'tomtom/tcomment_vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'Yggdroot/indentLine'
" Plug 'wfxr/minimap.vim'
Plug 'mfussenegger/nvim-dap'

" colorschemes
Plug 'aonemd/kuroi.vim'
Plug 'jcorbin/darkula'
Plug 'chuling/ci_dark'
Plug 'tomasiser/vim-code-dark'
Plug 'dunstontc/vim-vscode-theme'
Plug 'romainl/Apprentice'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 200

" Plug 'neovim/nvim-lspconfig'
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
" if filereadable(expand("~/.config/nvim/configs/vim-buftabline.vim"))
"   source ~/.config/nvim/configs/vim-buftabline.vim
"  endif

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

" vim-startify
if filereadable(expand("~/.config/nvim/configs/vim-startify.vim"))
  source ~/.config/nvim/configs/vim-startify.vim
 endif

" indentLine
if filereadable(expand("~/.config/nvim/configs/indentLine.vim"))
  source ~/.config/nvim/configs/indentLine.vim
 endif

" nvim-bufferline
if filereadable(expand("~/.config/nvim/configs/nvim-bufferline.vim"))
  source ~/.config/nvim/configs/nvim-bufferline.vim
 endif

" nvim-dap
if filereadable(expand("~/.config/nvim/configs/nvim-dap.vim"))
  source ~/.config/nvim/configs/nvim-dap.vim
 endif


" lua << EOF
"
" require'lspconfig'.tsserver.setup{}
"
" local nvim_lsp = require('lspconfig')
" local on_attach = function(client, bufnr)
"   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
"
"   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
"
"   -- Mappings.
"   local opts = { noremap=true, silent=true }
"   buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
"   buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
"   buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
"   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
"   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
"   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
"   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
"   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
"   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
"   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
"   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
"   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
"   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
"   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"
"   -- Set some keybinds conditional on server capabilities
"   if client.resolved_capabilities.document_formatting then
"     buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
"   elseif client.resolved_capabilities.document_range_formatting then
"     buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
"   end
"
"   -- Set autocommands conditional on server_capabilities
"   if client.resolved_capabilities.document_highlight then
"     vim.api.nvim_exec([[
"       hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
"       hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
"       hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
"       augroup lsp_document_highlight
"         autocmd! * <buffer>
"         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
"         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
"       augroup END
"     ]], false)
"   end
" end
"
" -- Use a loop to conveniently both setup defined servers 
" -- and map buffer local keybindings when the language server attaches
" local servers = { "pyright", "rust_analyzer", "tsserver" }
" for _, lsp in ipairs(servers) do
"   nvim_lsp[lsp].setup { on_attach = on_attach }
" end
" EOF
"
"
"
"
"
"
