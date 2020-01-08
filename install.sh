echo "Instalando pacotes e apps..."

echo "Instalando Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Instalando chrome..."
brew cask install google-chrome

echo "Instalando Git..."
brew install git

echo "Instalando VS Code..."
brew cask install visual-studio-code

echo "Instalando VLC..."
brew cask install vlc

echo "Instalando Hyper..."
brew cask install hyper

echo "Adicionando tema dracula no Hyper"
hyper install hyper-dracula

echo "Instalando font Fira Code"
brew tap caskroom/fonts
brew cask install font-fira-code

echo "Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Instalando ZPlugin"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

echo "Instalando Spaceship"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

echo "Link para o tema Spaceship"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Fim Instalando pacotes e apps"

echo "link para .zsh e .zsh_history"
ln -s $pwd/.zsh ~/.zsh
ln -s $pwd/.zsh_history ~/.zsh_history

echo "link para .gitconfig e .gitignore"
ln -s $pwd/.gitconfig ~/.gitconfig
ln -s $pwd/.gitignore ~/.gitignore

echo "Fim Adiconando Symlinking..."
