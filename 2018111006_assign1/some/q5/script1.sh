#bin/bash

ls -R -l > list
cat list | cut -f9 -d " " > names

while read -r i;
do
	j=$(echo $i | awk '{print $9}')
	path=$(find -name "$j")
	ldate=$( echo "$i" | awk -F ' ' '{print $6,$7}')
	ltime=$( echo "$i" | awk -F ' ' '{print $8}')
	echo -e "\n$ldate $ltime $path"
done <list

compgen -ac | grep "^lo" > temp.txt
for command in $( cat temp.txt )
do
	des=$(man $command | head -4 | tail -1)
	echo "$command: $des" >> 2018111006.txt
done

nooflines=$(cat 2018111006.txt | wc -l)
echo "no of lines = $nooflines "
echo
max_length=$(cat 2018111006.txt | wc -L)
echo "Max length = $max_length "
echo

cp 2018111006.txt backup.txt
sed -i -e 's/function/method/g' ./2018111006.txt
