local M = {}

M.config = function()
  lvim.plugins = {
    {"joshdick/onedark.vim"},
    {"rakr/vim-one"},
    {"xero/sourcerer.vim"},
    {"romainl/Apprentice"},
    {"folke/tokyonight.nvim"},
    {"larsbs/vimterial_dark"},
    {"bluz71/vim-moonfly-colors"},
    {"marko-cerovac/material.nvim"},
    -- {"haringsrob/nvim_context_vt"},
    {"tpope/vim-surround"},
    {"mboughaba/i3config.vim"},
    {"iamcco/markdown-preview.nvim"},
    {"junegunn/goyo.vim"},
    {"shaunsingh/nord.nvim"},
    {"Mofiqul/vscode.nvim"},
    {"chuckmasucci/darkplus.nvim"},
    {"chentau/marks.nvim"},
    {"folke/persistence.nvim"},
    {"simrat39/symbols-outline.nvim"},
    {"kkoomen/vim-doge", run = ':call doge#install()'},
    {"stevearc/aerial.nvim"},
    {"Pocco81/TrueZen.nvim"},

    -- firenvim
    {
      "glacambre/firenvim",
      run = function() vim.fn['firenvim#install'](0) end
    },

    -- Treesitter Playground
    {
      "nvim-treesitter/playground",
      event = "BufRead"
    },

    -- Vim Tmux Navigator
    {"christoomey/vim-tmux-navigator"},

    -- Comments
    {
      "tomtom/tcomment_vim",
      config = function()
        vim.cmd [[
          let g:tcomment#filetype#guess_typescriptreact = 1
        ]]
      end
    },

    -- Vim Conflicted
    {"christoomey/vim-conflicted"}, {
        "tpope/vim-fugitive"
    },

    -- diffview
    {
      "sindrets/diffview.nvim",
      event = "BufRead",
    },

    -- Better Motions
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "<leader><leader>f", ":HopChar1<CR>", { silent = true })  -- toggle Hop Word
        vim.api.nvim_set_keymap("n", "<leader><leader>l", ":HopLine<CR>", { silent = true })  -- toggle Hop Line
      end,
    },

    -- nvim-colorizer
    {
      "norcalli/nvim-colorizer.lua",
        config = function()
          require("colorizer").setup({ "*" }, {
              RGB = true, -- #RGB hex codes
              RRGGBB = true, -- #RRGGBB hex codes
              RRGGBBAA = true, -- #RRGGBBAA hex codes
              rgb_fn = true, -- CSS rgb() and rgba() functions
              hsl_fn = true, -- CSS hsl() and hsla() functions
              css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
              css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
              })
      end,
    },

    -- Indentline
    {
      "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        setup = function()
          local indent_blankline = function ()
            vim.g.indent_blankline_char = "│"
            vim.g.indent_blankline_show_first_indent_level = true
            vim.g.indent_blankline_filetype_exclude = {
              "startify", "dashboard", "dotooagenda", "log", "fugitive", "gitcommit",
              "packer", "vimwiki", "markdown", "json", "txt", "vista", "help",
              "todoist", "NvimTree", "peekaboo", "git", "TelescopePrompt", "undotree",
              "flutterToolsOutline", "" -- for all buffers without a file type
            }
            vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
            vim.g.indent_blankline_show_trailing_blankline_indent = false
            vim.g.indent_blankline_show_current_context = true
            vim.g.indent_blankline_context_patterns = {
              "class", "function", "method", "block", "list_literal", "selector",
              "^if", "^table", "if_statement", "while", "for"
            }
            -- because lazy load indent-blankline so need readd this autocmd
            -- vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
          end

          indent_blankline()
        end,
    },

      -- trouble.nvim
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
  }
end

local dap_install = require("dap-install")
dap_install.config("chrome", {})

local dap = require("dap")
dap.configurations.vue = {
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

require'marks'.setup {
  -- whether to map keybinds or not. default true
  default_mappings = true,
  -- which builtin marks to show. default {}
  builtin_marks = { ".", "<", ">", "^" },
  -- whether movements cycle back to the beginning/end of buffer. default true
  cyclic = true,
  -- whether the shada file is updated after modifying uppercase marks. default false
  force_write_shada = true,
  -- how often (in ms) to redraw signs/recompute mark positions.
  -- higher values will have better performance but may cause visual lag,
  -- while lower values may cause performance penalties. default 150.
  refresh_interval = 250,
  -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
  -- marks, and bookmarks.
  -- can be either a table with all/none of the keys, or a single number, in which case
  -- the priority applies to all marks.
  -- default 10.
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  -- disables mark tracking for specific filetypes. default {}
  excluded_filetypes = {},
  -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
  -- sign/virttext. Bookmarks can be used to group together positions and quickly move
  -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
  -- default virt_text is "".
  bookmark_0 = {
    sign = "⚑",
    virt_text = "hello world"
  },
  mappings = {}
}

require("persistence").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

vim.g.symbols_outline = {
  auto_close = false,
  auto_preview = false,
  highlight_hovered_item = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
      close = {"<Esc>", "q"},
      goto_location = "<Cr>",
      focus_location = "o",
      hover_symbol = "<C-space>",
      toggle_preview = "K",
      rename_symbol = "r",
      code_actions = "a",
  },
  lsp_blacklist = {},
  position = 'left',
  preview_bg_highlight = 'Pmenu',
  show_guides = true,
  show_numbers = true,
  show_relative_numbers = true,
  show_symbol_details = false,
  symbol_blacklist = {
    "Variable", "Function"
    -- "File", "Module", "Namespace", "Package", "Class", "Method", "Property",
    -- "Field", "Constructor", "Enum", "Interface", "Function", "Variable",
    -- "Constant", "String", "Number", "Boolean", "Array", "Object", "Key", "Null",
    -- "EnumMember", "Struct", "Event", "Operator", "TypeParameter"
  },
  symbols = {
    File = {icon = "", hl = "TSURI"},
    Module = {icon = "", hl = "TSNamespace"},
    Namespace = {icon = "", hl = "TSNamespace"},
    Package = {icon = "", hl = "TSNamespace"},
    Class = {icon = "𝓒", hl = "TSType"},
    Method = {icon = "ƒ", hl = "TSMethod"},
    Property = {icon = "", hl = "TSMethod"},
    Field = {icon = "", hl = "TSField"},
    Constructor = {icon = "", hl = "TSConstructor"},
    Enum = {icon = "ℰ", hl = "TSType"},
    Interface = {icon = "ﰮ", hl = "TSType"},
    Function = {icon = "", hl = "TSFunction"},
    Variable = {icon = "", hl = "TSConstant"},
    Constant = {icon = "", hl = "TSConstant"},
    String = {icon = "𝓐", hl = "TSString"},
    Number = {icon = "#", hl = "TSNumber"},
    Boolean = {icon = "⊨", hl = "TSBoolean"},
      Array = {icon = "", hl = "TSConstant"},
    Object = {icon = "⦿", hl = "TSType"},
    Key = {icon = "🔐", hl = "TSType"},
    Null = {icon = "NULL", hl = "TSType"},
    EnumMember = {icon = "", hl = "TSField"},
    Struct = {icon = "𝓢", hl = "TSType"},
    Event = {icon = "🗲", hl = "TSType"},
    Operator = {icon = "+", hl = "TSOperator"},
    TypeParameter = {icon = "𝙏", hl = "TSParameter"}
  },
  width = 70,
}

require("lspconfig").vuels.setup{
  on_attach = require("aerial").on_attach,
}


return M




