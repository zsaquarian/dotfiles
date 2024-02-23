if status is-interactive
  # Commands to run in interactive sessions can go here
  zoxide init fish --cmd cd | source
  starship init fish | source
  set -gx MCFLY_KEY_SCHEME vim
  mcfly init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/nahos/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
fish_add_path /home/nahos/.spicetify
