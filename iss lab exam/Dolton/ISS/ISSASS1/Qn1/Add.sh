#!/bin/bash
x=""
l=$( cat ~/bin/Qn1/count.txt )
x+="$l"
x+=" "
x+="$1 $2 $3 $4"
f=1
IFS=$'\n'
tt2=$( echo "$x" | cut -c 3- )
for i in $(cat ~/bin/Qn1/Database.txt);
do
	tt1=$( echo "$i" | cut -c 3- )
	if [ "$tt1" == "$tt2" ]
	then
	f=0
	fi
done
if [ "$f" == "1" ]
then
echo $x >> ~/bin/Qn1/Database.txt
declare -i l=$l+1
> ~/bin/Qn1/count.txt
echo "$l" > ~/bin/Qn1/count.txt
fi
