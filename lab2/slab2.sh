#!/bin/bash
letters=("А" "а" "Е" "е" "Ё" "ё" "И" "и" "О" "о" "У" "у" "Э" "э" "Ю" "ю" "Я" "я")
max=''
maxw=0
while read p; do
for i in $p;do
	len=${#i}
	cur=0
	for((j=0;j<$len;j++));do
		for l in letters;do
			if [$l==${i:$j:1}] ;then
				let cur++
			fi
		done
		if [$cur > $maxw] ; then
			cur=$maxw
			max=$i
		fi
	done
done
done <text.txt
