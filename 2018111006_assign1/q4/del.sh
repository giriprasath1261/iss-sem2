clear
id =$1
at -r $1
grep -v "$id" storage.txt > temp.txt
mv temp.txt storage.txt
