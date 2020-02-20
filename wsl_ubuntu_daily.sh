cd $HOME
pwd
do-release-upgrade
apt update
apt full-upgrade -y
apt autoremove
cd -
echo 'Done!'