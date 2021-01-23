#!/bin/bash

yes | unminimize && 
apt-get install jq tree git curl -y &&
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && apt-get install -y nodejs &&
npm install -g pnpm typescript &&
git config --global user.name "t" && git config --global user.email "t@google.com" && git config --global credential.helper store &&
(wget -O- -q https://github.com/thangtc987/setup-public/raw/main/apply-timezone.sh | bash)
