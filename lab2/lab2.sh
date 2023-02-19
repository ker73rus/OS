#!/bin/bash
wget -O text.txt https://cloud.athene.tech/f/508ac6c79a134eb7a444/?dl=1
en=$(enca -i text.txt)
if [ "$en" = "UTF-8" ];
then
echo "Already UTF-8"
else
iconv -f $en -t UTF-8 -o text.txt text.txt
fi
