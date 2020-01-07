a=1
b=1
c=2
echo "1"
echo "1"
while [ $c -le 55 ]
do
declare -i c=$a+$b
declare -i a=$b
declare -i b=$c
if [ c%2 ]
then
echo $c
fi
done
