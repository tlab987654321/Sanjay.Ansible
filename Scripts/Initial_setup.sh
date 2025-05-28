#!/bin/bash
# Installing Ansible and Git on the Device
echo "Installing Ansible and Git"
sudo yum install ansible* git -y

# Add the git hub key to known Hosts
ssh-keyscan -H github.com >> /home/sanjay/.ssh/known_hosts

# Install Required Ansible communities
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
ansible-galaxy role install thrinadsanjay.ansible_role-init_setup

# Create a Playbook
cat > setup.yml<<EOF
---
- name: Perform Initial Setup of PC.
  hosts: localhost
  become: true
  roles:
    - thrinadsanjay.ansible_role-init_setup
EOF

# Run Ansible play book for Initial Setup
ansible-playbook setup.yml

# Cleanup setup.yaml file
rm  -rvf setup.yml

