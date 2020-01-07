
help()
{
echo
echo " -t --time\n -b --body\n -i --id\n "
echo
}

while getopts 't:b:i:h' flag;
do
  	case "$flag" in
        t) time=$OPTARG ;;
        b) body=$OPTARG ;;
	i) id=$OPTARG ;;
        h) help ;;
        esac
done


flag1=0
flag2=0

if [ ${#time} -eq 0 ]
then
    	let flag1=1
fi

if [ ${#body} -eq 0 ]
then
    	let flag2=1
fi

if [ $flag1 -eq 1 ] && [ $flag2 -eq 1 ]
then
	echo "Enter someting to edit"
	exit
fi

if [ $flag1 -eq 0 ] && [ $flag2 -eq 1 ]
then
	rec=$( cat rec_time.txt )
	let rec=$rec+1
	b1=$( cat storage.txt | grep "$id," | cut -f2 -d "," )
	d1=$( cat storage.txt | grep "$id," | cut -f3 -d "," )

	cat storage.txt | grep -v "$id" > simply.txt
	at -r $id
	echo "$rec,$b1,$d1,$time" >> simply.txt
	echo "notify-send Reminding you $b1" | at $time &> out2.txt
	mv simply.txt storage.txt
	echo "$rec" > rec_time.txt
fi

if [ $flag1 -eq 1 ] && [ $flag2 -eq 0 ]
then
	rec=$( cat rec_time.txt )
        let rec=$rec+1

    	t2=$( cat storage.txt | grep "$id," | cut -f4 -d "," )
        d2=$( cat storage.txt | grep "$id," | cut -f3 -d "," )
        cat storage.txt | grep -v "$id" > simply.txt
	at -r $id
	echo " $rec,$body,$d2,$t2 " >> simply.txt
        echo "notify-send Reminding you $body" | at $t2 &> out2.txt
        mv simply.txt storage.txt
        echo "$rec" > rec_time.txt

fi


if [ $flag1 -eq 0 ] && [ $flag2 -eq 0 ]
then
	rec=$( cat rec_time.txt )
        let rec=$rec+1

        d3=$( cat storage.txt | grep "$id," | cut -f3 -d "," )

        cat storage.txt | grep -v "$id" > simply.txt
	at -r "$id"
        echo "notify-send Reminding you $body" | at $time &> out2.txt
        echo "$rec,$body,$d2,$time" >> simply.txt
        mv simply.txt storage.txt
        echo "$rec" > rec_time.txt

fi
echo

