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
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)

-- dismiss all notifications
keymap("n", "<leader>x", ":lua require('notify').dismiss({ notify = true })<cr>", opts)

-- === visual mode ===
-- stay in visual mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
