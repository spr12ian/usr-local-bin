#!/bin/bash
# This script must be run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

declare -a requiredPackages=("npm")

do-release-upgrade
apt update
apt full-upgrade -y

# now loop through the above array
for i in "${requiredPackages[@]}"
do
   echo "$i"
   apt install -y "$i"
done

apt autoremove -y

echo 'Done!'
