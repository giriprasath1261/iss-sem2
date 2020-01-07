read x y
x=$(($x-$y))
if [ "$((x%10))" == "9" ]
then
	echo $(($x-1))
else
	echo $(($x+1))
fi
