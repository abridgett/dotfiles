# This makes me still be able to run X stuff when su'd to root.
if [ -z "$XAUTHORITY" ] && [ -r "$HOME/.Xauthority" ]; then
  export XAUTHORITY=$HOME/.Xauthority
fi