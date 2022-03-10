#!/bin/bash
pidwait(){
wait $1
if [$? -eq 0]
then
  echo "The program was terminated as expected"
  ls
else
  echo "The program was not terminated. It will be terminated here"
  kill -kill $1
  ls
fi
}
