id=$1
atrm $1
grep -v "$id" storage.txt > temp.txt
mv temp.txt storage.txt
