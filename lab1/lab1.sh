#!/bin/bash
for((i=0;i<$1;i++))
do
mkdir catalog$i
for((j=0;j<$2;j++))
do
touch catalog$i/file$j
let k=$i*$j
echo $k > catalog$i/file$j
done
done
