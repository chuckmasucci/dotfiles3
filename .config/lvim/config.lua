-- ===============================
-- LunarVim
-- ===============================
lvim.colorscheme = "darkplus"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.log.level = "warn"
lvim.leader = "space"
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.automatic_servers_installation = true

require("autocommands").config()
require("builtin").config()
require("keybindings").config()
require("plugins").config()
require("neovim").config()
require("null_ls").config()

-- ===============================
-- Snippets
-- ===============================
-- require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets/vue-vscode-snippets" } }
-- require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets/vscode-es7-javascript-ract-snippets" } }
