#!/bin/bash

p_name=$1 && useradd $p_name && echo "$p_name:$p_name" | chpasswd
