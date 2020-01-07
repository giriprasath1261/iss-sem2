#!/bin/bash
mkdir ~/bin
mkdir ~/bin/Qn1
> ~/bin/Qn1/Database.txt
> ~/bin/Qn1/count.txt
echo "0" > ~/bin/Qn1/count.txt
cp Add.sh ~/bin/Qn1/Addsong
cp Delete.sh ~/bin/Qn1/Deletesong
cp Edit.sh ~/bin/Qn1/Editsong
cp Viewall.sh ~/bin/Qn1/Viewallsong
cp Viewselect.sh ~/bin/Qn1/Viewselectsong
chmod 777 ~/bin/Qn1/Addsong
chmod 777 ~/bin/Qn1/Deletesong
chmod 777 ~/bin/Qn1/Editsong
chmod 777 ~/bin/Qn1/Viewallsong
chmod 777 ~/bin/Qn1/Viewselectsong
PATH="$PATH:~/bin/Qn1/"
clear
echo "READY"
