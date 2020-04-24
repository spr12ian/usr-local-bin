# We expect this script to run as root
cd $HOME
pwd

do-release-upgrade
apt update
apt full-upgrade -y
cat ubuntu_packages.txt | xargs apt install -y
apt autoremove

cd -
pwd

echo 'Done!'
