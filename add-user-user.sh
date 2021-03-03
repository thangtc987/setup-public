(p_name=user && mkdir -p /home/$p_name && useradd $p_name -d /home/$p_name -s /bin/bash && echo "$p_name:$p_name" | chpasswd && usermod -aG sudo $p_name && chmod 777 /home/$p_name -R && chown $p_nme)
