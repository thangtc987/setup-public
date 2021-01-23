p_v1=7.0 && p_v2=$p_v1.211_4 &&

apt-get -y install xfce4 &&
wget https://download.nomachine.com/download/$p_v1/Linux/nomachine_"$p_v2"_amd64.deb && sudo dpkg -i nomachine_"$p_v2"_amd64.deb
cd /usr/NX/etc && sudo cp node.cfg node.cfg.bak &&
sudo sed -i 's/DefaultDesktopCommand.*/DefaultDesktopCommand "\/usr\/bin\/X11\/startxfce4"/' node.cfg && cat node.cfg | grep Default
