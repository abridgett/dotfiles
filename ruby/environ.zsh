# gem install --user-install
for dir in $HOME/.gem/ruby/*; do·
  if [ -d "$dir" ]; then
    export PATH=$PATH:$dir
  fi
done