export HISTSIZE=2000           # Number of lines in history file.
export HISTCONTROL=ignoreboth  # uniq history and ignore spaces
export HISTIGNORE="&:bg:exit"  # ignore duplicate commands
export HISTTIMEFORMAT="%H:%M:%S %d/%m/%Y "
#Synchronise histories of different shell instances
#PROMPT_COMMAND="$PROMPT_COMMAND history -a; history -r;"
