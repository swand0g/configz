# Scripts
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(thefuck --alias)" 

# PATH Overrides
function pathadd {
  case ":$PATH:" in
    *":$1:"*)
      :
      ;; # already there
    *)
      PATH="$1:$PATH" # or PATH="$PATH:$new_entry"
      ;;
  esac
}

function pathrm {
  if [ $# -lt 1 ]; then
    echo "Need at least one arg such as $0 /usr/local/bin"
  else
    FOLDERS_TO_REMOVE=`echo $@ | sed 's/ /|/g'`
    
    echo "PATH var is:"
    echo $PATH
    echo "###"
    
    PATH=$( echo ${PATH} | tr -s ":" "\n" | grep -vwE "(${FOLDERS_TO_REMOVE})" | tr -s "\n" ":" | sed "s/:$//" )
    
    echo "New path to run export:"
    echo "export PATH=$PATH"
  fi
}

## Custom BINs
CUSTOM_BINS="$HOME/.bin"
pathadd $CUSTOM_BINS

## Deno
export DENO_INSTALL="$HOME/.deno"
pathadd "$DENO_INSTALL/bin"

## Python 3.10
## The original version is saved in .zprofile.pysave
PYTHON_3_10_PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin"
pathadd $PYTHON_3_10_PATH

## Setting PATH for Python 3.11
## The original version is saved in .zprofile.pysave
PYTHON_3_11PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin"
pathadd $PYTHON_3_11PATH

## Golang
GO_PATH="$HOME/go/bin"
pathadd $GO_PATH

## LLVM
LLVM_PATH="$(brew --prefix llvm)/bin"

## Export path
export PATH
