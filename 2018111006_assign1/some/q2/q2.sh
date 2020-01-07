if [ -f index.html ]
then
    rm index.html
fi


if [ -z $1 ]
then
	echo "String not given Exiting......"
	exit
fi

if [ -z $2 ]
then
	echo "Website not given Exiting......"
	exit
fi
echo $1 $2;
wget -q -O index.html "$2";

echo -n "$1 : "
sed -i 's/<[^>]\+>//g' index.html
cat index.html | grep -w "$1" | wc -l
