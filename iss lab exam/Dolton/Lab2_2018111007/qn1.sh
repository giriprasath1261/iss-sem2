if [ "$1" != "" ]
then
if [ "$2" != "" ]
then
if [ "$3" == "" ]
then
declare -i c=$1+$2
echo $c
else
echo "NotValid"
fi
else
echo "NotValid"
fi
else
echo "NotValid"
fi
