content=$(cat text.txt)
words=($content)
maxl=0
max=""
for word in "${words[@]}"
do
	vowels=$(echo $word | grep -o "[АаЕеЁёУуОоЭэЯяИиЮю]" | wc -l)
	if [ $vowels -gt $maxl ]
	then
		echo "vowels $vowels   maxl $maxl"
		maxl=$vowels
		max=$word
		echo $max
	fi
done
echo "$max"
