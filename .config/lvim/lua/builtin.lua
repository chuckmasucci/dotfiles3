
local M = {}
M.config = function()
  -- dap
  lvim.builtin.dap.active = true

  -- nvimtree
  lvim.builtin.nvimtree.setup.view.width = 50
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 0
  lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true

  -- bufferline
  lvim.builtin.bufferline.options.tab_size = 38
  lvim.builtin.bufferline.options.max_name_length = 38
  lvim.builtin.bufferline.options.show_buffer_close_icons = false
  -- lvim.builtin.bufferline.options.always_show_bufferline = true

  -- dashboard
  -- lvim.builtin.dashboard.active = true

  -- telescope
  local _, actions = pcall(require, "telescope.actions")
  lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
    },
    -- for normal mode
    n = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    },
  }
  lvim.builtin.telescope.defaults.path_display = {}

  -- treesitter
  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.highlight.enabled = true
  lvim.builtin.treesitter.ensure_installed = {
    "css",
    "javascript",
    "json",
    "lua",
    "python",
    "scss",
    "typescript",
    "yaml",
    "vue",
  }

  -- project
  lvim.builtin.project.detection_methods = { "^src" }
  lvim.builtin.project.silent_chdir = false

end

return M

