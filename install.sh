#!/bin/bash
#-------------------------- 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/deppan/utility/master/install.sh)"
#-------------------------- 

vim() {
   curl -fsSLo ~/.vimrc https://raw.github.com/deppan/utility/master/vimrc
}

brew() {
  # Install brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Install iterm2
  /usr/local/bin/brew install --cask iterm2

  # Install font
  /usr/local/bin/brew tap homebrew/cask-fonts
  /usr/local/bin/brew install --cask font-fira-code
}

omz() {
  # Install oh my zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Install theme of oh my zsh 
  /usr/bin/git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  sed -i "" "s/^ZSH_THEME=.*$/ZSH_THEME=\"spaceship\"/" ~/.zshrc

  curl -fsSLo ~/.zprofile https://raw.github.com/deppan/utility/master/zprofile
}

mac() {
  vim
  xcode-select --install
  brew
  omz
}

linux() {
  echo "set completion-ignore-case on" > ~/.inputrc
  vim
  omz
}

install() {
  sysOS=$(uname)
  if [ $sysOS == "Darwin" ];then
    mac
  elif [ $sysOS == "Linux" ];then
    linux
  fi
}

install
