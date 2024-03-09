local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- === normal mode ===
-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- go down and up wrapped lines
keymap("n", "k", "gk", opts)
keymap("n", "j", "gj", opts)

-- file explorer
keymap("n", "<leader>e", ":Neotree toggle<CR>", vim.tbl_extend('keep', opts, { desc = 'Toggle Explorer' }))

-- telescope
-- local builtin = require('telescope.builtin')
keymap("n", "<leader>ff", ":Telescope find_files<CR>", vim.tbl_extend('keep', opts, { desc = 'Find Files' }))
keymap("n", "<leader>fl", ":Telescope live_grep<CR>", vim.tbl_extend('keep', opts, { desc = 'Find Line' }))
keymap("n", "<leader>fr", ":Telescope resume<CR>", vim.tbl_extend('keep', opts, { desc = 'Resume Search' }))

-- buffers
keymap("n", "<leader>bw", ":bw<CR>", vim.tbl_extend('keep', opts, { desc = 'Buffer Wipe' }))
keymap("n", "<leader>bd", ":bd<CR>", vim.tbl_extend('keep', opts, { desc = 'Buffer Delete' }))

-- dismiss all notifications
keymap("n", "<leader>x", ":lua require('notify').dismiss({ notify = true })<cr>",
  vim.tbl_extend('keep', opts, { desc = 'Close Notifications' }))

-- code actions
keymap("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>", vim.tbl_extend('keep', opts, { desc = 'Code Actions' }))
keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", vim.tbl_extend('keep', opts, { desc = 'Rename' }))

-- competitest
keymap("n", "<leader>cr", ":CompetiTest receive problem<CR>", vim.tbl_extend('keep', opts, { desc = 'Receive Problem' }))
keymap("n", "<leader>cR", ":CompetiTest run<CR>", vim.tbl_extend('keep', opts, { desc = 'Run Code' }))

-- === visual mode ===
-- stay in visual mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
