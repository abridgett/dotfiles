if [ -x /usr/bin/less ]; then
  export PAGER=less
  export LESS='-iRFXMqj2PM?f%f:<PIPE>.?lb %lb/?L%L:\?..?pb %pb\%:?bb %bb/%B bytes..?m (%i of %m).?e EOF.$'
  if [ -r "$PROJECTS/scripts/bin/lesspipe" ]; then
   export LESSOPEN="|$PROJECTS/scripts/bin/lesspipe '%s'"
  elif [ -r /usr/bin/lesspipe ]; then
    export LESSOPEN='| /usr/bin/lesspipe %s'
  elif [ -r /usr/bin/lesspipe.sh ]; then
    export LESSOPEN='| /usr/bin/lesspipe.sh %s'
  fi
fi