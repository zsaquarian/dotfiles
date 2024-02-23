local M = {
  "mickael-menu/zk-nvim",
  event = "VeryLazy",
  config = function()
    require("zk").setup({
      picker = "telescope"
    })
  end
}

return M
