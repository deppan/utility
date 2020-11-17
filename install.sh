#/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cask install iterm2

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
sed -i "" "s/^ZSH_THEME=.*$/ZSH_THEME=\"spaceship\"/" ~/.zshrc

curl -fsSLo ~/.vimrc https://raw.github.com/deppan/utility/master/vimrc
curl -fsSLo ~/.zprofile https://raw.github.com/deppan/utility/master/profile
