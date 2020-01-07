#!/bin/bash
echo "$( awk '{ if ( ($1 + $2 + $3)/3>=80 ){printf $1 " " $2 " " $3 " : A\n"}else if (($1 + $2 + $3)/3>=60){printf $1 " " $2 " " $3 " : B\n"}else if (($1 + $2 + $3)/3>=40){printf $1 " " $2 " " $3 " : C\n"}else {printf $1 " " $2 " " $3 " : F\n"}}' marks.txt )" > grades.txt
cat ./grades.txt