#!/bin/bash

location=$HOME
file_name="sentinel"

if [ -d $location ]
then
  echo "OK on the $location directory"
  echo "Now checking on the file, $file_name..."
  if [ -e $location/$file_name ]
  then
    echo "Ok on the file, $file_name."
    echo "Updating file's contents."
    date >> $location/$file_name
  else
    echo "File, $location/$file_name, does NOT exists"
    echo "Nothing to update."
  fi
else
  echo "Directory, $location, does NOT exist"
  echo "Nothing to update"
fi 
