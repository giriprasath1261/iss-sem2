help()
{
echo -e "HELP:\n"
echo " -s --songname(mandatory)\n -a --artist\n "
echo
}

while getopts 's:a:h' flag;
do
  	case "$flag" in
        s) songname=$OPTARG ;;
        a) artist=$OPTARG ;;
        h) help ;;
        esac
done

if [ -z "$songname" ]
then
	echo -e "didnt enter song name for entry\n INVALID EXITING!!!\n"
	exit
fi

if [ -z "$artist" ]
then
	artist="-"
fi

if [ -s playlist ]
then
	temp=$(cat playlist | grep "$songname" | cut -f 2 -d ":")
	if [ "$temp" != "" ] && [ "$temp" == "$songname" ]
	then
		echo -e "Duplicate entered INVLID !!\n"
		echo -e "EXITING!.."
		exit
	fi
fi

declare -i currid

if [ -s id ]
then
currid=$(cat id)
let currid=$currid+1
echo "$currid" > id
else
currid=1
echo "$currid" > id
fi

echo -e "$currid:$songname:$artist" >> playlist
echo
echo -e "CREATED!!!"
echo

