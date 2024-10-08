#! /bin/bash

############
# terminal
############
xargs brew install < cli_apps.txt

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

############
# git
############
brew install --cask git-credential-manager

# for token based auth
# printf "host=github.com\nprotocol=https\nusername=$USERNAME\npassword=$TOKEN" | git credential-manager store
# for ssh
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

############
# others
############

# install gui apps --cask option is for large/gui apps
xargs brew install --cask < gui_apps.txt

# add vscode to terminal
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
