if [ $commands[fasd] ]; then # check if fasd is installed
    eval "$(fasd --init auto)"
fi
