# SSH keys
# Best to use MacOS version:
# One off: add passphrase to keychain:
# /usr/bin/ssh-add -K keyfile.pem
# Load keys from keychain:
if ! ssh-add -l >/dev/null; then
  /usr/bin/ssh-add -A
  # Now load keys without a passphrase
  ssh-add ~/.ssh/*.pem
fi

