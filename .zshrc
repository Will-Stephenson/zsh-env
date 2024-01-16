## OMZ/ZSH Config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true" # Disable omz auto updates
HIST_STAMPS="yyyy-mm-dd" # Sets date format for HISTORY time stamps
ZSH_DISABLE_COMPFIX=true

# ZSH Plugins (loaded from ~/.oh-my-zsh/plugins/ & ~/.oh-my-zsh/custom/plugins/)
plugins=(git)

source $ZSH/oh-my-zsh.sh

## User configuration
export EDITOR=/bin/vim

## Aliases
alias bless="less +G"
alias v="vim"
alias vi="vi -u NONE"

# Git
alias git-purge="git branch --merged | sed '/*/d; /main/d; /^$/d' > /C/temp/mergedGitBranches && code --wait /C/temp/mergedGitBranches && cat /C/temp/mergedGitBranches | xargs git branch -d"

alias gs="git status"
alias gp="git pull -p"
alias gsm="git switch main"
alias gc="git add -A && git commit -m"
alias gbd="git branch --show-current | sed 's/\-/ /g'"
alias gbdc="git branch --show-current | sed 's/\-/ /g' | clip"
alias gbs='git switch $(git branch -a | fzf)'
alias gdp="git diff HEAD^"

# WSL Only
alias jq="~/jq-win64.exe"

