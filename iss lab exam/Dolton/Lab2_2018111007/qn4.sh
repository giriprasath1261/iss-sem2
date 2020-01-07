i=0
tmp=0
arr=( "$@" )
while [ "$i" != "$#" ]
do
declare -i j=$i+1
while [ "$j" != "$#" ]
do
if [ ${arr[$j]} -le ${arr[$i]} ]
then
tmp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$tmp
fi
let "j+=1"
done
let "i+=1"
done
i=0
while [ "$i" != "$#" ]
do
echo ${arr[$i]}
let "i+=1"
done
