PATH=$PATH:/usr/local/bin:/usr/local/sbin:.
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$PROJECTS/scripts/bin" ] ; then
    PATH="$PROJECTS/scripts/bin:$PATH"
fi

# What system are we on (saves running uname lots)
case `uname -s` in
  Linux) export SYS=linux; export SYSVER=$3;;
  AIX) export SYS=aix; export SYSVER=$4$3;;
  SunOS) export SYS=sun; export SYSVER=$3;;
  HP-UX) export SYS=hp; export SYSVER=$3;;
  Darwin) export SYS=mac; export SYSVER=$3;;
  *) export DEBUG=T; export SYS=unknown; export SYSVER=unknown;;
esac

if [ "$SYS" = linux ]; then
  PATH=$PATH:/usr/X11R6/bin:/usr/games
#else
#  PATH=~/bin/$SYS:/usr/tools/bin:/etc:$PATH:/usr/ucb:/usr/bin/X11:/usr/contrib/bin
fi
if [ "$SYS" = aix ]; then
  # DEBUG=xldb
  PATH=~/bin/aix41:$PATH:/usr/ibmcxx/bin:/usr/lpp/UMS/bin
elif [ "$SYS" = sun ]; then
  # DEBUG=debugger
  PATH=$PATH:/opt/SUNWspro/bin:/usr/openwin/bin
elif [ "$SYS" = hp ]; then
  # DEBUG=dde
  PATH=$PATH:/opt/langtools/bin
elif [ "$SYS" = mac ]; then
  PATH=$PATH:/opt/X11/bin
fi

export PATH
