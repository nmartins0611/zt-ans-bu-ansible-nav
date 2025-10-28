#!/bin/sh
echo "Solved module called module-01" >> /tmp/progress.log

USER=rhel

# create playbook test.yml
su - $USER -c 'cat >/home/$USER/test.yml <<EOL
---
- name: this is just a test
  hosts: localhost
  gather_facts: true
  tasks:

  - name: ping test
    ping:

EOL

cat /home/$USER/test.yml'
