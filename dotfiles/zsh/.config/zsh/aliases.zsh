# Shortcuts
alias v="vim"
alias x+="chmod +x"
alias -- +x="chmod +x"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Show more info in mv, rm and cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# LS
# List all files colorized in long format
alias l="ls -lF --color"

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='ls -AFh --color --group-directories-first'

# List all files colorized in long format, including dot files
alias la="ls -la --color"

# List only directories
alias lsd='ls -l | grep "^d"'

# zshrc config
alias zshrc="${EDITOR} ~/.zshrc"
alias reload="source ~/.zshrc && echo 'Shell config reloaded from ~/.zshrc'"

# TMUX Aliases
alias tmux='tmux -u'
# For creating a new session
tnew_session(){
    # To avoid 'unset $TMUX to force' error
    TMUX= tmux new-session -d -s $1
        tmux switch-client -t $1
}

# Aliases
alias tnews='tnew_session'
alias tls='tmux list-session'
alias tlw='tmux list-window'
alias tsw='tmux switch -t '
alias tlc='tmux list-command'
alias tat='tmux attach -t'
alias trs='tmux rename-session -t'

# Killing
alias tks='tmux kill-session -t'

# Redshift
alias redup='redshift -l 19.07:72.87 > /dev/null 2>&1 &'
alias redown='pkill redshift'
