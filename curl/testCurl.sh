#!/bin/bash
STATUS=$(curl -o /dev/null -w "%{http_code}" "https://www.naver.com/")

if [ $STATUS == 200 ]; then
  echo "fine"
fi

