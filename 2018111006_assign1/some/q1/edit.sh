echo
cat playlist
echo
echo -e  "Enter the id you want to edit\n"

read id
echo
cat playlist | grep -v "^$id" > playlist
echo
echo -e "Enter song name:"
read songname
echo -e "Enter artist:"
read artist
echo "$id:$songname:$artist" >> playlist
echo
echo
