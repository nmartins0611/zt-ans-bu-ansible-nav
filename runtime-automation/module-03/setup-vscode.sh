#!/bin/sh
echo "Starting module called module-03" >> /tmp/progress.log

USER=rhel

su - $USER -c 'pip3 install yamllint --user'
pip3 install yamllint
