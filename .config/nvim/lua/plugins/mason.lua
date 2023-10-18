local M = {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim"
    },
    config = function()
      require("mason").setup()
    end
}

return M
