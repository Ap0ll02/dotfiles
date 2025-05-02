if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Set up fzf key bindings
fzf --fish | source

alias hx="helix"
alias vi="nvim"
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /home/apollo/.ghcup/bin $PATH # ghcup-env
