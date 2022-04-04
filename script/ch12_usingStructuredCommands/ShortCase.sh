#!/bin/bash
# Using a short case statement

case $USER in
  heejinchae | christine)
    echo "Welcome $USER"
    echo "Please enjoy your visit.";;
  barbara | tim)
    echo "Hi, there, $USER"
    echo "We're glad you could join us.";;
  testing)
    echo "Please log out wehn done with test.";;
  *)
    echo "Sorry, you are not allowed here."
esac
