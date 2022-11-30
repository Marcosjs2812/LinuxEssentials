#!/bin/bash

if grep -q root /etc/passwd; then
  echo root is in the password file
else
  echo root is missing from the password file
fi

#if-elif-else
if [ "$1" = "hello" ]; then
  echo "hello yourself"
elif [ "$1" = "goodbye" ]; then 
  echo "nice to have met you\n"
  echo "hope to see you again"
else
  echo "I didnt understand that"
fi

#switch-case
case "$1" in
hello|hi)
  echo "hello yourself"
  ;;
goodbye)
  echo "nice to have met you"
  echo "hope to see you again"
  ;;
*)
  echo "I didnt understand that"
esac
