#!/bin/sh
echo "Solved module called module-03" >> /tmp/progress.log

USER=rhel

# make sure ansible-navigator.yml is configured correctly
cat >/home/$USER/ansible-navigator.yml <<EOL
---
ansible-navigator:
  execution-environment:
    container-engine: podman
    image: ee-supported-rhel8:latest
    pull-policy: never
    enabled: false

  playbook-artifact:
    save-as: /home/rhel/playbook-artifacts/{playbook_name}-artifact-{ts_utc}.json

  logging:
    level: debug

  editor:
    command: code-server {filename}
    console: false
EOL

cat /home/$USER/ansible-navigator.yml
