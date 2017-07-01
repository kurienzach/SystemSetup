# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt inc_append_history # Append history as commands are executed
setopt hist_ignore_all_dups # Dont save duplicates
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Source antigen
export ADOTDIR="$HOME/.config/zsh/antigen/.antigen"
source $HOME/.config/zsh/antigen/antigen.zsh

# Syntax highlighting
antigen bundle zdharma/fast-syntax-highlighting
#antigen bundle trapd00r/zsh-syntax-highlighting-filetypes

# Async Prompt - Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

# Source user files
source $HOME/.config/zsh/exports
source $HOME/.config/zsh/aliases
source $HOME/.config/zsh/functions
