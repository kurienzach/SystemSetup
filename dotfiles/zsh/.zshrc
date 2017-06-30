setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit


# Source antigen
export ADOTDIR="$HOME/.config/zsh/antigen/.antigen"
source $HOME/.config/zsh/antigen/antigen.zsh

# Syntax highlighting
antigen bundle zdharma/fast-syntax-highlighting

# Async Prompt - Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply
