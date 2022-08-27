eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases

## Git 
alias gfp="git fetch && git pull"
alias gat="git status"
alias gim="git commit -m"
alias gup="git push"
alias dif="git diff"

## Self
alias zed="vim ~/.zprofile"
alias zup="source ~/.zprofile"

## General
alias l="exa -abhHl --no-user --git"

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
