#!/bin/bash
mkdir ~/bin
mkdir ~/bin/Qn2
sudo apt-get install notify-osd
sudo apt install at
> ~/bin/Qn2/Database.txt
cp Add.sh ~/bin/Qn2/Addrem
cp Delete.sh ~/bin/Qn2/Delrem
cp Edit.sh ~/bin/Qn2/Editrem
cp List.sh ~/bin/Qn2/Listrem
chmod 777 ~/bin/Qn2/Addrem
chmod 777 ~/bin/Qn2/Delrem
chmod 777 ~/bin/Qn2/Editrem
chmod 777 ~/bin/Qn2/Listrem
PATH="$PATH:~/bin/Qn2/"
clear
echo "READY"
