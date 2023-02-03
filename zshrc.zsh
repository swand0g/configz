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

function fi {
  fzf --preview 'cat {}'
}

# Mcfly (Great Scott!)
eval "$(mcfly init zsh)"

# Zoxide (Better CD)
eval "$(zoxide init zsh)"

# FNM (Fast Node Manager)
eval "$(fnm env --use-on-cd)"

# FZF (Fuzzy Finder)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Prompt
setopt prompt_subst
PROMPT='%F{220}<%f %~ $(git_branch)%F{220}>%f '
