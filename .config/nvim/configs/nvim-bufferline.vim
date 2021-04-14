nnoremap <silent><C-n> :BufferLineCycleNext<CR>
nnoremap <silent><C-A-n> :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><A-l> :BufferLineMoveNext<CR>
nnoremap <silent><A-h> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

lua << EOF
require"bufferline".setup {
    options = {
        always_show_bufferline = true,
        buffer_close_icon = "",
        close_icon = "",
        diagnostics = "nvim_lsp",
        enforce_regular_tabs = true,
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        modified_icon = "●",
        show_buffer_close_icons = true,
        separator_style = "thin",
        tab_size = 28,
        view = "multiwindow"
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        fill = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = "#3A3E44",
            gui = "bold"
        },
        separator_visible = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        indicator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        modified_selected = {
            guifg = string_fg,
            guibg = "#3A3E44"
        }
    }
}
