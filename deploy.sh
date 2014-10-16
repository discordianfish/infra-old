#!/bin/sh
set -x
set -e
. conf/*
export HOST=`hostname`

if [ ! -e "hosts/$HOST" ]
then
  echo "No deploy scripts for host $HOST found"
  exit 1
fi

if [ -n "$1" ]
then
  exec hosts/$HOST/$1
fi

for d in hosts/$HOST/*
do
	sh $d
done
