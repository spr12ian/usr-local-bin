#!/bin/bash
# We expect this script to run as root

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
