if [ "$ZSH" ] && [ -f /opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ]; then
  # Cannot source this as anto-ls breaks it
  export PATH=$PATH:/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
  source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
elif [ -f /usr/local/google-cloud-sdk/path.bash.inc ]; then
  . /usr/local/google-cloud-sdk/path.bash.inc
fi