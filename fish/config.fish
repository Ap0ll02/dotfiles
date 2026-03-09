if status is-interactive
    # Commands to run in interactive sessions can go here
end

# --------------
# ALIASES
# --------------
alias music="rmpc"
alias lg="lazygit"
alias vi="nvim"
alias peru="paru --bottomup"
alias cal="khal calendar"
alias cali="khal interactive"
alias nv="neovide"
alias code="neovide"
alias sf="source ~/.config/fish/config.fish"
alias sso="ssh olympus"
alias anime="ani-cli"

# --------------
# Shell and Other Inits
# --------------
starship init fish | source
zoxide init fish --cmd cd| source

# GHCUP Glasgow Haskell Compiler
# set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/apollo/.ghcup/bin $PATH # ghcup-env

fish_add_path -m /usr/bin /usr/local/bin

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"
set -Ux PATH $HOME/.zvm/self $PATH
