export IRCNICK=Wyvern
export IRCNAME="Adrian Bridgett <adrian@smop.co.uk>"
export IRCSERVER=irc.blitzed.org
export EMAIL=adrian@smop.co.uk
export ORGANIZATION='Bitcube Ltd.'

if [ -r "$HOME/.gce/cacert.pem" ]; then
  export SSL_CERT_FILE=$HOME/.gce/cacert.pem
fi
export ANSIBLE_HOST_KEY_CHECKING=False

#eval "$(docker-machine env dev)"
