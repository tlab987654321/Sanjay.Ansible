#!/bin/bash
# ========== PRE-INSTALL SCRIPT ==========
# Reads variables from vars.cfg and outputs %include files

# Load environment variables
source /mnt/install/repo/vars.cfg

# Decide install mode
if [ "$GRAPHICAL_INSTALL" = "true" ]; then
  echo "graphical" > /tmp/mode.ks
else
  echo "text" > /tmp/mode.ks
fi

# Default network (can be overridden by boot options)
if [ $DHCP_ENABLED != "true" ]; then
  cat <<EOF > /tmp/network-ks.cfg
network --device=link --bootproto=static --ip=$STATIC_IP --netmask=$NETMASK --gateway=$GATEWAY --nameserver=$NAMESERVER --onboot=on --hostname=$HOSTNAME_VAR
EOF
else
  echo "network --device=link --bootproto=dhcp --onboot=on --hostname=$HOSTNAME_VAR" > /tmp/network-ks.cfg
fi

# Package list section
{
  echo "%packages"
  for P in $PKG_LIST; do echo "$P"; done
  echo "%end"
} > /tmp/packages.ks

# User creation script (post-install)
{
  echo "%post --interpreter=/bin/bash"
  for ENTRY in "${USERS[@]}"; do
    USERNAME="${ENTRY%%|*}"
    PASSHASH="${ENTRY##*|}"
    echo "useradd $USERNAME"
    echo "echo '$USERNAME:$PASSHASH' | chpasswd --encrypted"
    echo "mkdir -p /home/$USERNAME/.ssh"
    echo "chmod 700 /home/$USERNAME/.ssh"
    echo "curl -sSf \"$KEY_SOURCE_URL/${USERNAME}.pub\" -o /home/$USERNAME/.ssh/authorized_keys"
    echo "chmod 600 /home/$USERNAME/.ssh/authorized_keys"
    echo "chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh"
  done
  echo "%end"
} > /tmp/users.ks
