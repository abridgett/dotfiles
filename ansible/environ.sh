# Ansible
export PATH=$PATH:$PROJECTS/ansible/bin
# Beware: Brew's ansible binaries override this
#export PYTHONPATH=$PROJECTS/ansible/lib:$HOME/.gce/secrets.py
export ANSIBLE_LIBRARY=$PROJECTS/ansible/library:/usr/share/ansible/
export MANPATH=$PROJECTS/ansible/docs/man:
export GCE_INI_PATH=$HOME/.gce/gce.ini