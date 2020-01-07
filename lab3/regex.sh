echo "For ly,rea,self"
echo
grep "ly\|rea\|self" hamlet.txt
echo
echo "for sentence not starting with T"
echo
grep "^[A-SU-Z]" hamlet.txt
echo
echo "for containing 's' , '?' , ',' , '-' "
echo
grep "[s?,-]" hamlet.txt
echo
echo "does not contain the but contains to"
echo
grep -v "the" hamlet.txt | grep "to"
echo
echo
