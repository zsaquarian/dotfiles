local M = {
  'numToStr/Comment.nvim',
  lazy = false,
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  }
}

function M.config()
  require('ts_context_commentstring').setup {
    enable_autocmd = false,
  }

  require('Comment').setup()
end

return M
