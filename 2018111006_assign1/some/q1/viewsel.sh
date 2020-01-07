echo
echo "Enter songname or artist"
read arg
    	echo "------------------------------------------------------"
echo
format="| %04d | %20s | %20s |"
header="| %04s | %20s | %20s |"
printf "$header" "#ID" "#SONGNAME" "#ARTIST"
echo
echo
    	echo "------------------------------------------------------"
while read -r line
do
  	id=$(echo "$line" | grep "$arg" | cut -f1 -d ":" )
        name=$(echo "$line" | grep "$arg" | cut -f2 -d ":" )
        artist=$(echo "$line" | grep "$arg" | cut -f3 -d ":" )
        printf "$format" "$id" "$name" "$artist"
        echo
done < playlist
echo
    	echo "------------------------------------------------------"

