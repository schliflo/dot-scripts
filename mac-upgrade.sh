#!/bin/bash

brew update
brew upgrade
brew cu -ac
brew cleanup
npm update -g
composer global update
