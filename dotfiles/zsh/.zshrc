# Source antigen
export ADOTDIR="$HOME/.config/zsh/antigen/.antigen"
source $HOME/.config/zsh/antigen/antigen.zsh

# Plugins
antigen bundle git

# Syntax highlighting
antigen bundle zdharma/fast-syntax-highlighting
#antigen bundle trapd00r/zsh-syntax-highlighting-filetypes

# Async Prompt - Pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

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

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Spped up completion
# https://coderwall.com/p/9fksra/speed-up-your-zsh-completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/c

# Source user files
source $HOME/.config/zsh/exports.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/functions.zsh
source $HOME/.config/zsh/fasd.zsh
source $HOME/.config/zsh/config.zsh

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit
