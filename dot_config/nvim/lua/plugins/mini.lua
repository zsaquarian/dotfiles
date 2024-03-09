local M = {
  'echasnovski/mini.nvim',
  event = 'BufEnter',
  version = '*',
}

function M.config()
  require('mini.surround').setup()
  require('mini.statusline').setup()

  require('mini.pairs').setup()
  require('mini.bracketed').setup()
  require('mini.tabline').setup()

  local miniclue = require('mini.clue')
  miniclue.setup {
    triggers = {
      -- Leader triggers
      { mode = 'n', keys = '<Leader>' },
      { mode = 'x', keys = '<Leader>' },

      -- Built-in completion
      { mode = 'i', keys = '<C-x>' },

      -- `g` key
      { mode = 'n', keys = 'g' },
      { mode = 'x', keys = 'g' },

      -- Marks
      { mode = 'n', keys = "'" },
      { mode = 'n', keys = '`' },
      { mode = 'x', keys = "'" },
      { mode = 'x', keys = '`' },

      -- Registers
      { mode = 'n', keys = '"' },
      { mode = 'x', keys = '"' },
      { mode = 'i', keys = '<C-r>' },
      { mode = 'c', keys = '<C-r>' },

      -- Window commands
      { mode = 'n', keys = '<C-w>' },

      -- `z` key
      { mode = 'n', keys = 'z' },
      { mode = 'x', keys = 'z' },
    },

    clues = {
      -- Enhance this by adding descriptions for <Leader> mapping groups
      { mode = 'n', keys = '<Leader>f', desc = '+Find' },
      { mode = 'n', keys = '<Leader>b', desc = '+Buffers' },
      { mode = 'n', keys = '<Leader>c', desc = '+CompetiTest' },
      { mode = 'n', keys = '<Leader>l', desc = '+LSP' },

      miniclue.gen_clues.builtin_completion(),
      miniclue.gen_clues.g(),
      miniclue.gen_clues.marks(),
      miniclue.gen_clues.registers(),
      miniclue.gen_clues.windows(),
      miniclue.gen_clues.z(),
    },
  }

  starter = require('mini.starter')
  starter.setup({
    header = tostring([[
ZZZZZZZZZZZZZZZZZZZ     SSSSSSSSSSSSSSS          444444444     222222222222222
Z:::::::::::::::::Z   SS:::::::::::::::S        4::::::::4    2:::::::::::::::22
Z:::::::::::::::::Z  S:::::SSSSSS::::::S       4:::::::::4    2::::::222222:::::2
Z:::ZZZZZZZZ:::::Z   S:::::S     SSSSSSS      4::::44::::4    2222222     2:::::2
ZZZZZ     Z:::::Z    S:::::S                 4::::4 4::::4                2:::::2
        Z:::::Z      S:::::S                4::::4  4::::4                2:::::2
       Z:::::Z        S::::SSSS            4::::4   4::::4             2222::::2
      Z:::::Z          SS::::::SSSSS      4::::444444::::444      22222::::::22
     Z:::::Z             SSS::::::::SS    4::::::::::::::::4    22::::::::222
    Z:::::Z                 SSSSSS::::S   4444444444:::::444   2:::::22222
   Z:::::Z                       S:::::S            4::::4    2:::::2
ZZZ:::::Z     ZZZZZ              S:::::S            4::::4    2:::::2
Z::::::ZZZZZZZZ:::Z  SSSSSSS     S:::::S            4::::4    2:::::2       222222
Z:::::::::::::::::Z  S::::::SSSSSS:::::S          44::::::44  2::::::2222222:::::2
Z:::::::::::::::::Z  S:::::::::::::::SS           4::::::::4  2::::::::::::::::::2
ZZZZZZZZZZZZZZZZZZZ   SSSSSSSSSSSSSSS             4444444444  22222222222222222222
    ]]),
    content_hooks = {
      starter.gen_hook.adding_bullet(),
      starter.gen_hook.aligning('center', 'center'),
    },
  })
end

return M
