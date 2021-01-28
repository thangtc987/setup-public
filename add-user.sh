#!/bin/bash

p_name=remote && useradd $p_name && echo "$p_name:$p_name" | chpasswd