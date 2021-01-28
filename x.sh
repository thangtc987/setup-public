#!/bin/bash

if [[ -z "$1" ]]; then
    cat <<EOF 
Version: 0.1
USAGE: 
    x help          Print this help
    x upgrade       Reinstall this app
    x <command>     Run API on the setup-public repo
EOF
elif [[ "$1" == "upgrade" ]]; then
    wget -nv -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/install-helper.sh | bash
else
    wget -q -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/$1.sh | bash
fi