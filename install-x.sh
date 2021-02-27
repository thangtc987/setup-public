#!/bin/bash

# run below to install
# wget -nv -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/install-x.sh | bash

wget -nv https://raw.githubusercontent.com/thangtc987/setup-public/main/x.sh && sudo install x.sh /usr/bin/x && x

# remove old file
rm x.sh
