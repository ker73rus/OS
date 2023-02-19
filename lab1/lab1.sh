#!/bin/bash
for((i=0;i<$1;i++))
do
  mkdir catalog$i
  cd catalog$i
  for((j=0;j<$2;j++))
  do
    touch file$j
  done
  cd ..
done
