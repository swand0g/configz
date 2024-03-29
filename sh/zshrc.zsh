#!/bin/zsh

# Prompt
setopt prompt_subst
PROMPT='%F{220}<%f %~ $(git_branch)%F{220}>%f '
# PROMPT="%F{220}⚡>%f "

# Functions
function git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

function title {
  echo -en "\e]2;$@\a"
}

function gimp {
  git add .
  if [ "$1" != "" ]
  then
      git commit -m "$*"
  else
      git commit -m "misc: update"
  fi
  git push origin HEAD
}

function fz {
  fzf --preview 'cat {}'
}

function path {
  echo $PATH | tr ':' '\n'
}

function tagadd {
  git tag $1
  git push origin $1
}

function tagrm {
  git tag -d $1
  git push origin :refs/tags/$1
}

function ll {
  cd "$(llama "$@")"
}

function prs { 
  GH_FORCE_TTY=100% gh pr list --limit 100 |
  fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view --comments {1}' --preview-window 'down,70%' --header-lines 3 |
  awk '{print $1}' |
  xargsrgs gh pr checkout
}

# Shell evals
## Mcfly (Great Scott!)
eval "$(mcfly init zsh)"

## Zoxide (Better CD)
eval "$(zoxide init zsh)"

## FNM (Fast Node Manager)
eval "$(fnm env --use-on-cd)"

## FZF (Fuzzy Finder)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## bun
[ -s "/Users/aj/.bun/_bun" ] && source "/Users/aj/.bun/_bun"

## Iterm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## Confidential 🥷
source ~/developer/configz/confidential.sh

# Aliases
## Git 
alias get="git fetch && git pull"
alias gat="git status"
alias gim="git commit -m"
alias gup="git push"
alias dif="git diff"
alias d="git diff HEAD"

## Self
alias zed="hx ~/.zprofile"
alias zup="source ~/.zprofile && cp ~/.zprofile ~/developer/configz/sh/zprofile.zsh"
alias zred="hx ~/.zshrc"
alias zrup="source ~/.zshrc && cp ~/.zshrc ~/developer/configz/sh/zshrc.zsh"
alias reup="source ~/.zprofile && source ~/.zshrc && cp ~/.zprofile ~/developer/configz/sh/zprofile.zsh && cp ~/.zshrc ~/developer/configz/sh/zshrc.zsh"

## Editors
alias neo="nvim"

## Files
alias l="exa -abhHl --no-user --git --icons"
alias lmod="exa -abhHlr --no-user --git --icons --sort=mod"

## Updaters
alias bup="bat cache --build && cp ~/.config/bat/config ~/developer/configz/bat.conf && echo \"Updated bat config! 🦇\""

## GIMP
alias g="gimp"

## Python
alias python="python3"

## Rust
alias c="cargo"

## Nav
alias goto-brews="z /opt/homebrew/Cellar"
