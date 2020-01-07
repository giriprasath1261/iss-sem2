while read -r line
do
    echo $line | awk '{total = $1+$2+$3;}
    {avg = total/3;}
    {print "  ";}
    {if ( avg < 40 ){print $1,$2,$3 " : FAIL";}
  else if ( avg < 60 ){print $1,$2,$3 " : C";}
  else if ( avg < 80 ){print $1,$2,$3 " : B";}
    else{print $1,$2,$3 " A";}
    }' >> grades.txt
done < marks.txt
