#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

echo -ne '\e]11;#000000\e\\'  # set default foreground to black
echo -ne '\e]10;#00ff00\e\\'  # set default foreground to green

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Custom

# Add custom scripts to PATH
export PATH="$PATH:$HOME/Scripts"

# zoxide; z; Jump to path with regex through history
eval "$(zoxide init bash)"

# Starship
eval "$(starship init bash)"

# Cargo; Rust; Rustup
. "$HOME/.cargo/env"

# Go
export PATH="$PATH:$HOME/.go/bin"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Up/Down History Search; Fish-like
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Use trash-cli; trash-put
alias rm="echo 'This is not the command you are looking for.'; false"

# nvm; node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/sol/.ghcup/env" ] && . "/home/sol/.ghcup/env" # ghcup-env