-- globals
vim.g.mapleader = " " -- set leader to <space>

-- options
vim.opt.tabstop = 2 							-- set tabstop to 2
vim.opt.expandtab = true					-- convert tab to space
vim.opt.shiftwidth = 2					  -- set tab to 2 spaces
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.cmdheight = 0 						-- hide command line
vim.opt.backup = false 						-- don't create backup file
vim.opt.conceallevel = 0					-- show `` in markdown
vim.opt.encoding = "utf-8"				-- use utf-8 by default
vim.opt.hlsearch = false					-- don't highlight searches
vim.opt.mouse = "a"								-- allow using mouse
vim.opt.smartcase = true					-- smart case for search
vim.opt.smartcase = true					-- smart case for search
vim.opt.wrap = true               -- wrap lines
vim.opt.relativenumber = true     -- show relative line numbers
vim.opt.number = true             -- show absolute line numbers
vim.opt.termguicolors = true      -- full colours
vim.opt.scrolloff = 8             -- show more lines after EOF
vim.opt.undofile = true           -- create persistent undo file

vim.opt.updatetime = 100          -- needed for comment plugin

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- clear all notifications on entering insert mode
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = vim.api.nvim_create_augroup("NotifyClearGrp", {}),
  pattern = "*",
  callback = function()
    require("notify").dismiss({ silent = true })
  end
})
