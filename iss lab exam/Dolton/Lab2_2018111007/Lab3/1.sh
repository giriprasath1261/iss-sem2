#!/bin/bash
echo "Matches for ly,rea,self :"
echo "$( grep "ly\|rea\|self" ./hamlet.txt )"
echo
echo "Sentences that do not begin with T :"
echo "$( grep -v "^T" ./hamlet.txt )"
echo
echo "Contains s,? or - :"
echo "$( grep "s\|,\|?\|-" ./hamlet.txt )"
echo
echo "Contains to but not the :"
echo "$( grep -v "the" ./hamlet.txt | grep "to" )"
echo
