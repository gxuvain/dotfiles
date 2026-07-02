set fish_greeting
alias c="clear"
alias ll="eza -l --icons"
alias cat="bat"
starship init fish | source
zoxide init fish | source
fish_config theme choose catppuccin-macchiato

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# pnpm
set -gx PNPM_HOME "/Users/gxuvain/Library/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
