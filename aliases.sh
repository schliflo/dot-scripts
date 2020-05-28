#!/bin/bash

# easier git stuff
alias mergeinto="~/.scripts/git-merge-into.sh"
alias push="git push"
alias checkout="git checkout"
alias pull="git pull"
alias status="git status"

# bat instead of cat (https://github.com/sharkdp/bat)
alias cat="bat"

# mac upgrade
alias upgrade="~/.scripts/mac-upgrade.sh"

# general aliases
alias zefix="fuck"

# map `valet up` to `valet start`
valet() {
    if [[ $@ == "up" ]]; then
        command valet start
    else
        command valet "$@"
    fi
}

# include private stuff
bash ~/.scripts/private/index.sh