#!/bin/bash
# Installing Ansible and Git on the Device
echo "Installing Ansible and Git"
sudo yum install ansible* git -y
mkdir -m 700 .ssh

# Add the git hub key to known Hosts
ssh-keyscan -H github.com >> /home/sanjay/.ssh/known_hosts

# Install Required Ansible communities
echo "Installing the required Collections and roles"
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
ansible-galaxy collection install community.docker
ansible-galaxy collection install community.libvirt
ansible-galaxy role install thrinadsanjay.ansible_role-init_setup

# Create a Playbook
echo "Creating the Playbook..."
cat > setup.yml<<EOF
---
- name: Perform Initial Setup of PC.
  hosts: localhost
  become: true
  vars:
    device: /dev/sda
    partitions_required:
      - label: lv_iso
        size_gb: 20
        vg: data_vg
        lv: lv_iso
        mount_point: /ISO
      - label: lv_libvirt
        size_gb: 80
        vg: data_vg
        lv: lv_libvirt
        mount_point: /var/lib/libvirt
      - label: lv_ansible
        size_gb: 50
        vg: app_vg
        lv: lv_ansible
        mount_point: /Ansible
    bridge_name: br0
    bridge_iface: br0
    admin_user: sanjay
    IP_address: 192.168.0.20
    NetMask: 24
  roles:
    - thrinadsanjay.ansible_role-init_setup
#    - ansible_role-init_setup
EOF

# Run Ansible play book for Initial Setup
echo "Running the playbook..."
ansible-playbook setup.yml

# Cleanup setup.yaml file
echo "Cleaning up the setup file"
rm  -rvf setup.yml

# Clone the Ansible Repository
echo "Creating the Directory structure and Cloning Ansible Repository"
git clone git@github.com:tlab987654321/Sanjay.Ansible.git /Ansible/Code
mkdir /Ansible/Logs

