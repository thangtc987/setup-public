#!/bin/bash

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && apt-get install -y nodejs &&
npm install -g pnpm typescript