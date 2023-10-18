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

-- === visual mode ===
-- stay in visual mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

local keys = {
  ['cr']        = vim.api.nvim_replace_termcodes('<CR>', true, true, true),
  ['ctrl-y']    = vim.api.nvim_replace_termcodes('<C-y>', true, true, true),
  ['ctrl-y_cr'] = vim.api.nvim_replace_termcodes('<C-y><CR>', true, true, true),
}

_G.cr_action = function()
  if vim.fn.pumvisible() ~= 0 then
    -- If popup is visible, confirm selected item or add new line otherwise
    local item_selected = vim.fn.complete_info()['selected'] ~= -1
    return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
  else
    -- If popup is not visible, use plain `<CR>`. You might want to customize
    -- according to other plugins. For example, to use 'mini.pairs', replace
    -- next line with `return require('mini.pairs').cr()`
    return keys['cr']
  end
end

keymap('i', '<CR>', 'v:lua._G.cr_action()', { expr = true })
keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })
