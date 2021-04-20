#!/bin/bash
#-------------------------- 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/deppan/utility/master/install.sh)"
#-------------------------- 

vim() {
  curl -fsSLo ~/.vimrc https://raw.github.com/deppan/utility/master/vimrc
}

mac() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  # Install iterm2
  brew install --cask iterm2

  # Install font
  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code

  # Install oh my zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Install theme of oh my zsh 
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  sed -i "" "s/^ZSH_THEME=.*$/ZSH_THEME=\"spaceship\"/" ~/.zshrc

  curl -fsSLo ~/.zprofile https://raw.github.com/deppan/utility/master/zprofile
}

linux() {
  echo "set completion-ignore-case on" > ~/.inputrc
}

install() {
  sysOS=$(uname)
  if [ $sysOS == "Darwin" ];then
    mac
  elif [ $sysOS == "Linux" ];then
    linux
  fi

  vim
}

proxy() {
  export http_proxy=http://127.0.0.1:7890
  export https_proxy=http://127.0.0.1:7890
}

for arg in "$@"; do
  if [ $arg=="proxy" ]; then
    proxy
  fi
done

install
