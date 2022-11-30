#!/bin/bash

#for loops
SERVERS="servera serverb serverc"
for S in $SERVERS; do
  echo "Do something to $S"
done

for NAME in Sean Jon Isaac David; do
  echo "Hello $NAME"
done

for S in *; do
  echo "Doing something to $S"
done

#while loops
i=0
while [ $i -lt 10 ]; do
  echo $i
  i=$(( $i + 1))
done
echo "done counting"
