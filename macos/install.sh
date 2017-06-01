#install homebrew

xcode-select install

brew tap caskroom/cask
brew tap homebrew/core
brew tap caskroom/versions

brew install wget
brew install bash
brew install git
brew install bash-completion@2
brew install python
brew install python3
brew install openvpn
brew install terraform
brew install packer
brew install awscli
brew install tmux
brew install mtr
brew install pwgen

sudo chsh -s /usr/local/bin/bash

echo "  if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
  fi
" >> ~/.bash_profile

echo "
export PATH=\"/usr/local/bin:/usr/local/sbin:\$PATH\"
" >> ~/.bash_profile

brew install docker docker-machine docker-compose
brew cask install virtualbox

brew cask install iterm2
brew cask install sublime-text
brew cask install google-chrome
brew cask install firefox
brew cask install veracrypt
brew cask install keepassx
brew cask install nagstamon
brew cask install dropbox
brew cask install hipchat
brew cask install slack
brew cask install skype

brew cask install vagrant
brew install vagrant-completion

brew doctor

####

pip install virtualenv
pip install virtualenvwrapper

echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bash_profile

