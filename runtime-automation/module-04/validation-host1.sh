#!/bin/sh
echo "Validated module called module-04" >> /tmp/progress.log

USER=rhel

EESUPPORTED=`grep -c "ee-supported-rhel8" /home/$USER/ansible-navigator.log`

if [[ $EESUPPORTED -lt 1 ]]; 
then
    fail-message "Oh no, ee-supported-rhel8 wasn't used by ansible-navigator"
fi
