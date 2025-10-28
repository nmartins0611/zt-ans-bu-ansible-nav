#!/bin/sh
echo "Validated module called module-02" >> /tmp/progress.log

USER=rhel


WINPING=`grep -c "doc setup" /home/$USER/ansible-navigator.log`

if [[ $WINPING -lt 1 ]]; 
then
    fail-message "Oh no, you skipped step 6!"
fi
