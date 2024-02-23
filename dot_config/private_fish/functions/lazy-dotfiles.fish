function lazy-dotfiles --wraps='lazygit -g ~/.dotfiles/ -w ~' --description 'alias lazy-dotfiles lazygit -g ~/.dotfiles/ -w ~'
  lazygit -g ~/.dotfiles/ -w ~ $argv
        
end
