sed 's@archive.ubuntu.com@mirror.clearsky.vn@' -i /etc/apt/sources.list &&
apt-get update && apt-get upgrade -y &&
apt-get install openssh-server sudo vim iputils-ping net-tools -y
