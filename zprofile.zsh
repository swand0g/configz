# Scripts
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
## Git 
alias gfp="git fetch && git pull"
alias gat="git status"
alias gim="git commit -m"
alias gup="git push"
alias dif="git diff"

## Self
alias zed="nvim ~/.zprofile"
alias zup="source ~/.zprofile"

## Files
alias l="exa -abhHl --no-user --git"

# PATH Overrides
## Python 3.10
## The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
