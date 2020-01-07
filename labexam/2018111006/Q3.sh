echo
read num
echo
declare -l arr
declare -l minarr
declare -l maxarr
declare -i max=0
declare -i min=0
read arr
max=$(echo arr | wc -m)
min=$(echo arr | wc -m)
maxarr=$arr
minarr=$arr
for (( i = 1; i < num; i++ )); do
  read arr
  len=$(echo $arr | wc -m)
  echo $arr
  echo $len
  if [ "$len" -gt "$max" ]; then
    max=$len
    maxarr=$arr
  fi
  if [ "$len" -lt "$min" ]; then
    min=$len
    minarr=$arr
  fi
done
declare -i minsum=0
declare -i maxsum=0

for (( i = 0; i <max ; i++ )); do
  maxsum=$maxsum+
done

for (( i = 0; i < min; i++ )); do
  minsum=$minsum+1
done
echo "Long String Sum: $maxsum"
echo "Small String Sum: $minsum"
