# Scripts
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(thefuck --alias)" 

# Aliases
## Git 
alias get="git fetch && git pull"
alias gat="git status"
alias gim="git commit -m"
alias gup="git push"
alias dif="git diff"
alias d="git diff"

## Self
alias zed="nvim ~/.zprofile"
alias zup="source ~/.zprofile && cp ~/.zprofile ~/developer/configs/zprofile.zsh"
alias zuprc="source ~/.zshrc && cp ~/.zshrc ~/developer/configs/zshrc.zsh"

## Editors
alias neo="nvim"

## Files
alias l="exa -abhHl --no-user --git"

## Updaters
alias bup="bat cache --build && cp ~/.config/bat/config ~/developer/configs/bat.conf && echo \"Updated bat config! 🦇\""

## GIMP
alias g="gimp"

## Python
alias python="python3"

## Rust
alias c="cargo"

# PATH Overrides
## Python 3.10
## The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

## Deno
export DENO_INSTALL="/Users/aj/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
