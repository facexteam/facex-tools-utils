#apt-get update

apt-get install -y -q zip
apt-get install -y -q aria2
apt-get install -y -q dos2unix

wget http://devtools.qiniu.com/linux/amd64/qrsctl-v3.2.20170501 -O qrsctl
mv qrsctl /usr/bin
