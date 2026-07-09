set fish_greeting
alias c="clear"
alias ll="eza -l --icons"
alias cat="bat"
starship init fish | source
zoxide init fish | source
fish_config theme choose tokyonight-moon

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# pnpm
set -gx PNPM_HOME "/Users/gxuvain/Library/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/Users/gxuvain/.opam/opam-init/init.fish' && source '/Users/gxuvain/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
