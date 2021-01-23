#!/bin/bash

echo Setting up timezone... &&
DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata &&
ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
