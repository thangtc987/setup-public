apt update && apt install -y wget apt-transport-https gnupg2 &&
wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub &&
apt-key add openvpn-repo-pkg-key.pub &&
wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-buster.list &&
apt update && apt install -y openvpn3 &&

dbus-uuidgen > /var/lib/dbus/machine-id &&
mkdir -p /var/run/dbus &&
dbus-daemon --config-file=/usr/share/dbus-1/system.conf --print-address &&

openvpn3 log --log-level 6 --config /client.opvn &

openvpn3 session-start --config /client.opvn
