#!/bin/sh
echo "Solved module called module-02" >> /tmp/progress.log

USER=rhel

su - $USER -c 'cd /home/$USER/; ansible-navigator doc setup'
