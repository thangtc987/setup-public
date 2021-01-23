#!/bin/bash

yes | unminimize && 
(wget -O- -q https://github.com/thangtc987/setup-public/raw/main/apply-qol-cli.sh | bash) &&
(wget -O- -q https://github.com/thangtc987/setup-public/raw/main/apply-node.sh | bash) &&
(wget -O- -q https://github.com/thangtc987/setup-public/raw/main/apply-git.sh | bash) &&
(wget -O- -q https://github.com/thangtc987/setup-public/raw/main/apply-timezone.sh | bash)