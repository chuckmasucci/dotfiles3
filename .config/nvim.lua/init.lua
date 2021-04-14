require'includes'
require'plugins.init'

local cmd = vim.cmd       
local g = vim.g
local indent = 2                

g.mapleader = '\\'                

-- Set Options
vim.o.background = 'dark'
vim.o.backspace = 'indent,eol,start'
vim.o.clipboard = 'unnamedplus'
vim.o.cmdheight = 2
vim.o.hidden = true
vim.o.laststatus = 2
vim.o.showmode = false
vim.o.smartcase = false
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.timeoutlen = 300
vim.o.ttimeoutlen = 300
vim.o.undodir = '.undo'
vim.o.undofile = true
vim.o.updatetime = 300
vim.o.wildignore = '**/node_modules/**'
vim.o.wildmenu = true
vim.bo.shiftwidth = indent
vim.bo.expandtab = true
vim.bo.tabstop = indent
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'yes:2'
vim.wo.wrap = false

-- Set Mappings
map('n', '<leader><space>', '<cmd>noh<CR>');
map('n', 'G', 'Gzz');
map('n', '<leader>w', '<cmd>w<CR>');
map('n', '<leader><leader>b', '<cmd>bufdo wipeout<CR>');
map('n', '<leader>o', '<C-W>o<CR>');
map('n', '<leader>s', '<cmd>vsp<CR>');
map('n', '<leader>b', '<cmd>BW<CR>');
map('c', '<C-p>', '<Up>');                                                  
map('c', '<C-n>', '<Down>');

--Set Tree-sitter                         
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-- Set Colorscheme
cmd 'colorscheme apprentice'

-- Set Commands                     
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'


-- Folding
vim.wo.foldmethod = 'indent'
vim.o.viewoptions = 'cursor,folds,unix'
vim.wo.foldlevel = 99

vim.api.nvim_exec([[
  augroup remember_folds
    autocmd!
    autocmd BufWrite * mkview
    autocmd BufRead * silent! loadview
  augroup END
]], false)

