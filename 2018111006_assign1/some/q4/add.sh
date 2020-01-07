
help()
{
echo
echo " -t --time\n -b --body\n "
echo
}

while getopts 't:d:b:h' flag;
do
	case "$flag" in
	t) time=$OPTARG ;;
	b) body=$OPTARG ;;
	h) help ;;
	esac
done

if [ -z $time ]
then
	echo "time not given Exiting......"
	exit
fi

if [ -z $body ]
then
	echo "Body not given Exiting......"
	exit
fi

echo "notify-send $body" | at $time &> out.txt
id=$(cat out.txt | tail -1 | cut -d " " -f 2)
date=$(cat out.txt | tail -1 | cut -b 15-20 | tail -1)
time=$(echo $time | cut -d " " -f 1)
echo "$id,$body,$date,$time" >> storage.txt
echo "$id" > rec_time.txt
