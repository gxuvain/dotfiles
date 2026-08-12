set fish_greeting
alias c="clear"
alias ll="eza -l --icons"
alias cat="bat"
starship init fish | source
zoxide init fish | source
fish_config theme choose tokyonight-moon
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
