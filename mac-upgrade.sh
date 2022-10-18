#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

brew update
brew upgrade
brew cu -ac
brew cleanup
nvm install node
nvm use node
npm update -g
composer global update
