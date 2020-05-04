# We expect this script to run as root
cd $HOME
pwd

do-release-upgrade
apt update
apt full-upgrade -y
cat required_apt_packages.txt | xargs apt install -y
apt autoremove -y

cd -
pwd

echo 'Done!'
