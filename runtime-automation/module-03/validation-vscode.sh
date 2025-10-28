#!/bin/sh
echo "Validated module called module-03" >> /tmp/progress.log

USER=rhel

CODESERVER=`grep -c "code-server" /home/$USER/ansible-navigator.yml`
LINT=`yamllint /home/$USER/ansible-navigator.yml | grep -c "syntax error"`

# check if ansible-navigator is present
if [[ ! -f /home/$USER/ansible-navigator.yml ]]; then
    fail-message "ansible-navigator.yml is missing."

# run yamllint on ansible-navigator.yml
elif [[ $LINT -gt 0 ]]; then
    fail-message "It looks like there are syntax errors in your ansible-navigator.yml"

# check if code-server is present in ansible-navigator
elif [[ $CODESERVER -lt 1 ]]; then
    fail-message "code-server doesn't seem to be set as your default editor in ansible-navigator.yml"
fi
