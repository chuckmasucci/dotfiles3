local M = {}

M.config = function()
  vim.opt.foldmethod = 'expr'
  vim.opt.foldexpr   = "nvim_treesitter#foldexpr()"
  -- vim.opt.foldmethod = "indent"
  -- vim.opt.foldmethod = "syntax"
  -- vim.opt.foldlevel = 99
  vim.opt.relativenumber = true
end

return M
