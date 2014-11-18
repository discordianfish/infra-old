#!/bin/bash
set -x
set -e
for f in conf/*
do
  test -d $f && continue
  source $f
done

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
