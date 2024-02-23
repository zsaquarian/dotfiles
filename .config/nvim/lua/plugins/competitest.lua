local M = {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  config = function()
    local competitive_programming_dir = '/mnt/Storage/CompetitiveProgramming/'
    require('competitest').setup {
      received_problems_path = competitive_programming_dir .. "$(JUDGE)/$(PROBLEM).$(FEXT)",
      template_file = competitive_programming_dir .. "template.cpp",
      evaluate_template_modifiers = true
    }
  end,
  event = 'VeryLazy'
}

return M
