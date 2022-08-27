# Scripts
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
## Git 
alias get="git fetch && git pull"
alias gat="git status"
alias gim="git commit -m"
alias gup="git push"
alias dif="git diff"

## Self
alias zed="nvim ~/.zprofile"
alias zup="source ~/.zprofile && cp ~/.zprofile ~/developer/configs/zprofile.zsh"

## Editors
alias neo="nvim"

## Files
alias l="exa -abhHl --no-user --git"

## Updaters
alias bup="bat cache --build && cp ~/.config/bat/config ~/developer/configs/bat.conf && echo \"Updated bat config! 🦇\""

## Functions
function gimp() {
  git add .
  if [ "$1" != "" ]
  then
      git commit -m "$*"
  else
      git commit -m "misc: update"
  fi
  git push origin HEAD
}

# PATH Overrides
## Python 3.10
## The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
