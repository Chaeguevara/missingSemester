#!/bin/bash
loc=/home/Torfa

if [ -d $loc ]
then
  echo "The $loc exists"
  cd $loc
  ls
else
  echo "The $loc doesn't exist"
fi

