mkdir ~/setup
cp add.sh edit.sh del.sh viewall.sh viewsel.sh ~/setup/
PATH=$PATH:~/setup/
cd ~/setup
mv add.sh add
mv edit.sh edit
mv del.sh del
mv viewall.sh viewall
mv viewsel.sh viewsel
chmod 777 add del edit viewall viewsel
cd -
touch playlist
touch id
