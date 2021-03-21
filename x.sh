#!/bin/bash

if [[ -z "$1" ]]; then
    cat <<EOF 
Version: 0.2.2
USAGE: 
    x upgrade           Reinstall this app
    x cat <command>     Show content of the comment
    x <command>         Run API on the setup-public repo
EOF
elif [[ "$1" == "upgrade" ]]; then
    wget -nv --no-cache -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/install-x.sh | bash
elif [[ "$1" == "cat" ]]; then
    wget -q -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/$2.sh
else
    v_name=$1
    shift
    wget -q -O- https://raw.githubusercontent.com/thangtc987/setup-public/main/$v_name.sh | bash -s - "$@"
fi
