cat card.txt | sed 's/./&\n/g' | tac | sed -e :a -e 'N;s/\n//g;ta' > Out.txt
