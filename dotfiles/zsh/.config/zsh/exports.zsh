export EDITOR="/usr/local/bin/vim"

ZSH=$HOME/.config/zsh
ZSH_CACHE_DIR="$ZSH/cache"

less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more".)
  --quit-if-one-screen

  # Do not clear the screen first.
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
  --ignore-case

  # Do not automatically wrap long lines.
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes.
  --RAW-CONTROL-CHARS

  # Do not complain when we are on a dumb terminal.
  --dumb
);
export LESS="${less_options[*]}"
export PAGER='less'

# Export for TMUX
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"

export PATH=$PATH:/home/kurien/Documents/SystemSetup/scripts/bin/

