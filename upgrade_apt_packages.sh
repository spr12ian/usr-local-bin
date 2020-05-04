# We expect this script to run as root
requiredPackages="~/gitFolders/required_apt_packages.txt"

do-release-upgrade
apt update
apt full-upgrade -y
cat $requiredPackages | xargs apt install -y
apt autoremove -y

echo 'Done!'
