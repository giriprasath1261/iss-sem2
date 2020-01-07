declare path1=$1
declare path2=$2

touch sorted.txt

sort -t":" -k2 -n $path1 > sorted.txt

cp sorted.txt $path2/sorted.txt
sort="sorted.txt"
cd $path2

mv sorted.txt $path1

mkdir Bad Average Good Awesome

i=1
total=$(ls -p | grep -v / | wc -l)

while [ $i -le $total ]
do
name=$(ls -p | grep -v / | head -$i | tail -1)

x=$(cat $path1 | grep -w $name | cut -d':' -f 2 | cut -b 1)

let i=$i+1
if [ $x -lt 5 ]
then
	touch $path2/Bad/$name.mp4
elif [ $x -ge 5 ] && [ $x -lt 8 ]
then
	touch $path2/Average/$name.mp4
elif [ $x -ge 8 ] && [ $x -lt 9 ]
then
	touch $path2/Good/$name.mp4
else
	touch $path2/Awesome/$name.mp4
fi
done

