#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Instaling Ubuntu requirements"
  sudo apt-get update && \
    sudo apt-get install -y \
    apt-transport-https \
    build-essential \
    curl \
    file \
    git \
    openssh-server \
    procps \
    socat \
    software-properties-common \
    tldr \
    wget \
    zsh;        
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Instaling Mac Requirements";
fi

# Installing oh-my-zsh
echo ""
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# zsh

# "Instaling oh-my-zsh plugins..."
echo ""
echo "Installing oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
curl https://raw.githubusercontent.com/nosarthur/gita/master/.gita-completion.zsh --output ~/.zsh/.gita-completion.zsh --silent

# Instaling oh-my-zsh powerlevel10k theme
echo ""
echo "Instaling oh-my-zsh powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/themes/powerlevel10k/

# Instaling homebrew
echo ""
echo "Instaling homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo ""
echo "Instaling additional packages with brew"
#############################################

brew tap cantino/mcfly
brew install \
  1password-cli \
  ansible \
  aws-iam-authenticator \
  aws-vault \
  awscli \
  azure-cli \
  exa \
  fzf \
  helm \
  helmfile \
  httpie \
  jq \
  k9s \
  kubecm \
  kubectx \
  kubernetes-cli \
  mcfly \
  ncurses \
  packer \
  tfenv \
  yadm

echo ""
echo "Instaling Helm plugins"
#############################

helm plugin install https://github.com/databus23/helm-diff

echo ""
echo "Cloning Dotenv project to ~/"

# Removing temp files
rm -rf ~/.zshrc ~/.p10k.zsh

# Cloning dotfiles
cd ~
yadm clone git@github.com:zenatuz/dotfiles.git
