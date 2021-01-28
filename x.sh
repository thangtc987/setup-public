#!/bin/bash

echo Version: 0.1

if [[ "$1" == "help" ]]; then
    cat <<EOF 
USAGE: 
    x help          Print this help
    x upgrade       Reinstall this app
    x <command>     Run API on the setup-public repo
EOF
elif [[ "$1" == "upgrade" ]]; then
    wget -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/install-helper.sh | bash
else
    wget -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/$2.sh | bash
fi