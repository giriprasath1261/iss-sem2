echo
cat playlist
echo
echo -e  "Enter the id you want to delete\n"
read id

cat playlist | grep -v "^$id" > playlist

echo "DELETED!!..."
echo
