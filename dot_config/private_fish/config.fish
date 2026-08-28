set fish_greeting
alias c="clear"
alias ll="eza -l --icons"
alias cat="bat"
starship init fish | source
zoxide init fish | source
fish_config theme choose tokyonight_night
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# pnpm
set -gx PNPM_HOME "/Users/gxuvain/Library/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
