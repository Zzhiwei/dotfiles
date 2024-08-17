export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git web-search history macos)

source $ZSH/oh-my-zsh.sh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) -----
alias ls="eza"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
export SSL_CERT_FILE=$HOME/certs/rak-ca-bundle.pem
export NODE_EXTRA_CA_CERTS=$HOME/certs/rak-ca-bundle.pem
export REQUESTS_CA_BUNDLE=$HOME/certs/rak-ca-bundle.pem
export AWS_CA_BUNDLE=$HOME/certs/rak-ca-bundle.pem



