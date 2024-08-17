

############
# terminal
############
brew install zoxide
brew install eza

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


############
# apps
############
xargs brew install < apps.txt


# vscode
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
