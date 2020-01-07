clear

help()
{
echo
echo " -b --body\n -d --date\n "
echo
}

while getopts 'd:b:h' flag;
do
  	case "$flag" in
        d) date=$OPTARG ;;
        b) body=$OPTARG ;;
        h) help ;;
        esac
done

flag1=0
flag2=0

if [ ${#date} -eq 0 ]
then
	let flag1=1
fi

if [ ${#body} -eq 0 ]
then
	let flag2=1
fi

echo

if [ $flag1 -eq 1 ] && [ $flag2 -eq 1 ]
then
	atq

elif [ $flag1 -eq 0 ] && [ $flag2 -eq 1 ]
then
	while read -r i1 ;
	do
		d=$( echo "$i1" | cut -f3 -d "," | grep "$date" )
		if [ ! -z "$d" ]
		then
			echo "$i1"
		fi
	done<storage.txt

elif [ $flag1 -eq 1 ] && [ $flag2 -eq 0 ]
then
	while read -r i2 ;
	do
		b=$( echo "$i2" | cut -f2 -d "," | grep "$body" )
		if [ ! -z "$b" ]
		then
			echo "$i2"
		fi
	done<storage.txt

elif [ $flag1 -eq 0 ] && [ $flag2 -eq 0 ]
then
	while read -r i3 ;
	do
		d2=$( echo "$i3" | cut -f3 -d "," | grep "$date" )
		b2=$( echo "$i3" | cut -f2 -d "," | grep "$body" )
		if [ ! -z "$d2" ] && [ ! -z "$b2" ]
		then
			echo "$i3"
		fi
	done<storage.txt
fi

