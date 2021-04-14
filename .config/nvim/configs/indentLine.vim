" let g:indentLine_color_term = get(g:, 'indentLine_color_term', 239)
" let g:indentLine_char = get(g:, 'indentLine_char', '|')
" let g:indentLine_concealcursor = 'niv'
" let g:indentLine_conceallevel = 2
" let g:indentLine_fileType = ['*']
" let g:indentLine_fileTypeExclude = ['help', 'man', 'startify', 'vimfiler']



if &diff
    let g:indent_blankline_enabled = v:false
endif

let g:indentLine_char = get(g:, 'indentLine_char', '▏')
let g:indent_blankline_char = '▏'
let g:indent_blankline_filetype_exclude = [
    \ 'cheat40', 'fern', 'help', 'text', 'undotree', 'yaml'
    \]
let g:indent_blankline_show_first_indent_level = v:false
let g:indent_blankline_show_trailing_blankline_indent = v:false
autocmd BufRead * silent! IndentLinesToggle
