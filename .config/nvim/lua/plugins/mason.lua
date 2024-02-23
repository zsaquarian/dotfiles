local M = {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      automatic_installation = true
    })

    require('mason-lspconfig').setup_handlers {
      function (server_name)
        require('lspconfig')[server_name].setup({})
      end,
    }
  end
}

return M
