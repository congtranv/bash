#!/bin/bash
clear

if [ -z "$1" ]; then
  echo "syntax error: ./ssh-nano.sh [nano IP]"
  echo "./ssh-nano.sh 192.168.x.x"
  exit
else
  ip=$1
  echo "ssh to ivsr-nano at $1"
fi

ssh ivsr-nano@$1
