alias merge="~/.scripts/git-merge.sh"
alias push="git push"
alias checkout="git checkout"
alias pull="git pull"
alias zefix="fuck"

valet() {
    if [[ $@ == "up" ]]; then
        command valet start
    else
        command valet "$@"
    fi
}
