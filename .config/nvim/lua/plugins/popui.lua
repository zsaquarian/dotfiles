local M = {
  'hood/popui.nvim',
  event = "VeryLazy",
}

function M.config()
  vim.ui.select = require"popui.ui-overrider"
  vim.ui.input = require"popui.input-overrider"
end

return M
