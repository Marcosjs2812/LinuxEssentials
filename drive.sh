#!/bin/bash
echo "Please enter your age:" 
read age
if [ $age -lt 16 ] #-lt is less than
then
  echo "You are not old enough to drive."
else
  echo "You can drive!"
fi

