local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<C-f>", '<cmd>Files<cr>', opt)
vim.api.nvim_set_keymap("n", "<C-g>", '<cmd>Find<cr>', opt)

vim.api.nvim_exec([[
  if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
    set grepprg=rg\ --vimgrep
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --ignore-vcs --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
  endif
]], false)


