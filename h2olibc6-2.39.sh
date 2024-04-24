apt update
mv /etc/apt/sources.list /etc/apt/source
echo "deb http://archive.ubuntu.com/ubuntu/ bionic main restricted" > /etc/apt/sources.list
apt update
apt upgrade
apt install update-manager-core
do-release-upgrade
apt install bison make gawk automake -y
wget https://ftp.gnu.org/gnu/glibc/glibc-2.39.tar.gz
tar zxvf glibc-2.39.tar.gz
cd glibc-2.39
mkdir build
cd build
./configure --prefix=/home/libss/
make -j $nproc
make install
