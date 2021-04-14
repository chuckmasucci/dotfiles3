vim.g.indentLine_enabled = 1
vim.g.indent_blankline_char = "▏"

vim.cmd "hi IndentBlanklineChar guifg=#333333"

vim.g.indent_blankline_filetype_exclude = {"help", "terminal"}
vim.g.indent_blankline_buftype_exclude = {"terminal"}

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = false