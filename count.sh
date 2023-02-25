cat access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -20 > count.txt

while read -r line;
do
	user=`echo $line | cut -d ' ' -f 1`
	echo "User Address: $user"
	hit=`echo $line | cut -d ' ' -f 2`
	echo "Hits: $hit"
done < count.txt
