local M = {}

M.config = function()
  lvim.autocommands.custom_groups = {
    { "BufWrite", "*", "mkview" },
    { "BufWinEnter", "*", "silent! loadview"},
  }
end

return M

