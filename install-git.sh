#!/bin/bash

apt-get install -y git &&
git config --global user.name "t" && git config --global user.email "t@google.com" && git config --global credential.helper store
