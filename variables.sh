#!/bin/bash

ANIMAL=penguin
CURRENT_DIRECTORY='pwd'
SOMETHING=$ANIMAL

echo -n "What is your name? \n"
read NAME 

echo "\nMy favorite animal is a $SOMETHING and you are in $CURRENT_DIRECTORY\n"
echo "It seems that your name is: $NAME\n"
echo "Hello $1"
