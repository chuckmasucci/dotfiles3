map('n', '<C-n>', '<cmd>BufferLineCycleNext<CR>')
map('n', '<C-A-n>', '<cmd>BufferLineCyclePrev<CR>')
map('n', '<A-l>', '<cmd>BufferLineMoveNext<CR>')
map('n', '<A-h>', '<cmd>BufferLineMovePrev<CR>')

--These commands will sort buffers by directory, language, or a custom criteria
--nnoremap <silent>be :BufferLineSortByExtension<CR>
--nnoremap <silent>bd :BufferLineSortByDirectory<CR>

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
