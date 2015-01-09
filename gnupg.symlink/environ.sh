# eval GPG daemon if needed
if ! [ -x /usr/bin/seahorse-agent ] &&
     [ -f $HOME/.gpg-agent-info ] &&·
   kill -0 ‘cut -d: -f 2 $HOME/.gpg-agent-info‘ 2>/dev/null; then
  export GPG_AGENT_INFO=‘cat $HOME/.gpg-agent-info‘
elif [ -e /usr/bin/gpg-agent ]; then
  eval ‘gpg-agent --daemon --write-env-file‘
fi