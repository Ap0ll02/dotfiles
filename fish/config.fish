if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias music="rmpc"
alias lg="lazygit"
alias vi="nvim"
alias ls="lla"
alias peru="paru --bottomup"
alias cal="khal calendar"
alias cali="khal interactive"
starship init fish | source
zoxide init fish | source

if test -n "$SSH_CONNECTION"
    ~/Scripts/ssh_welcome.sh
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/apollo/.ghcup/bin $PATH # ghcup-env

function riscv-env
    fish_add_path /home/apollo/.dev/riscv/riscv-gnu-toolchain/inst/riscv32-unknown-elf/bin
    echo "RISC-V toolchain activated"
end

fish_add_path -m /usr/bin /usr/local/bin
# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"
set -Ux PATH $HOME/.zvm/self $PATH
